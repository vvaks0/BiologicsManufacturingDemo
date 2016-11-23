package com.hortonworks.iot.pharma.bolts;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.spark.ml.regression.LinearRegression;
import org.apache.spark.mllib.linalg.Vectors;
import org.apache.spark.mllib.regression.LinearRegressionModel;
import org.apache.spark.mllib.regression.LinearRegressionWithSGD;
import org.cometd.bayeux.Message;
import org.cometd.bayeux.client.ClientSessionChannel;
import org.cometd.client.BayeuxClient;
import org.cometd.client.transport.ClientTransport;
import org.cometd.client.transport.LongPollingTransport;
import org.eclipse.jetty.client.HttpClient;

import com.hortonworks.iot.pharma.events.BioReactorStatus;
import com.hortonworks.iot.pharma.util.Constants;

import org.apache.storm.task.OutputCollector;
import org.apache.storm.task.TopologyContext;
import org.apache.storm.topology.OutputFieldsDeclarer;
import org.apache.storm.topology.base.BaseRichBolt;
import org.apache.storm.tuple.Fields;
import org.apache.storm.tuple.Tuple;

/*
import backtype.storm.task.OutputCollector;
import backtype.storm.task.TopologyContext;
import backtype.storm.topology.OutputFieldsDeclarer;
import backtype.storm.topology.base.BaseRichBolt;
import backtype.storm.tuple.Fields;
import backtype.storm.tuple.Tuple;
import backtype.storm.tuple.Values;
*/

public class DetectSubOptimalConditions extends BaseRichBolt{
	private static final long serialVersionUID = 1L;
	private LinearRegressionModel model;
	private Constants constants;
	private String pubSubUrl;
	private String alertChannel;
	private String predictionChannel;
	private BayeuxClient bayuexClient;
	private OutputCollector collector;
	private double yieldPrediction = 0;
	private double yieldOptimalThreshold = 7500000.00;
	
	public void execute(Tuple tuple)  {
		BioReactorStatus bioReactorStatus = (BioReactorStatus) tuple.getValueByField("BioReactorStatus");
		Map<String, Object> data = new HashMap<String, Object>();
		System.out.println("********************************** Hours From Start: " + bioReactorStatus.getHoursFromStart());
		
		if(bioReactorStatus.getHoursFromStart() == 108){
			System.out.println("********************************** Calculating Expected Yield for this Batch.....");
			double[] vector = {bioReactorStatus.getGlucoseLevel(), bioReactorStatus.getLactateLevel(), bioReactorStatus.getPhLevel(), bioReactorStatus.getDisolvedOxygen()};
			System.out.println("********************************** Input Vector: " + bioReactorStatus.getGlucoseLevel() + ", " + bioReactorStatus.getLactateLevel() + ", " + bioReactorStatus.getPhLevel() + ", " + bioReactorStatus.getDisolvedOxygen());
			yieldPrediction = model.predict(Vectors.dense(vector));
			System.out.println("********************************** Predicted Yield : " + yieldPrediction);
			if( yieldPrediction < yieldOptimalThreshold){
				System.out.println("********************************** Predicted Yield is significanly sub optimal, sending alert.... ");
				data.put("serialNumber", bioReactorStatus.getSerialNumber());
				data.put("alertType", "Yield");
				data.put("alertDesc", "YIELD TRENDING SUB-OPTIMAL.");
				bayuexClient.getChannel(predictionChannel).publish(data);
				
				// Subscription to channels
				 ClientSessionChannel channel = bayuexClient.getChannel(predictionChannel);
				 channel.subscribe(new ClientSessionChannel.MessageListener()
				 {
				     public void onMessage(ClientSessionChannel channel, Message message)
				     {
				    	 System.out.println("********************************** Prediction Delivery has been Verified ");
				     }
				 });
			}
		}else{
			System.out.println("********************************** Predicted Yield is within acceptable range");
		}
		
		System.out.println("********************************** Ensuring Compliance with Rule Set....");
		if(bioReactorStatus.getDisolvedOxygen() <= .06){
			System.out.println("********************************** Disolved Oxygen is critical, causing accelerated yield degradation");
			data.put("serialNumber", bioReactorStatus.getSerialNumber());
			data.put("alertType", "O2");
			data.put("alertDesc", "Disolved Oxygen has dropped to critical level.");
			bayuexClient.getChannel(alertChannel).publish(data);
		}else{
			System.out.println("********************************** Disolved Oxygen is within and acceptable range");
		}
		
		if(bioReactorStatus.getPhLevel() <= 6.0){
			System.out.println("********************************** PH level is critical, causing accelerated yield degradation");
			data.put("serialNumber", bioReactorStatus.getSerialNumber());
			data.put("alertType", "PH");
			data.put("alertDesc", "PH levels have dropped to critical level.");
			bayuexClient.getChannel(alertChannel).publish(data);
		}else{
			System.out.println("********************************** PH level is within and acceptable range");
		}
		
		collector.ack(tuple);
	}

	@Override
	public void prepare(Map arg0, TopologyContext arg1, OutputCollector collector) {
		this.collector = collector;
		this.constants = new Constants();
		this.pubSubUrl = constants.getPubSubUrl();
		this.alertChannel = constants.getAlertChannel();
		this.predictionChannel = constants.getPredictionChannel();
		double intercept = 0.0;
		double [] weights = {-1.7052290698567234E7,1919617.150984642,1.7148147329881586E7,-136594.27503940943};
		model = new LinearRegressionWithSGD().createModel(Vectors.dense(weights), intercept);
		
		HttpClient httpClient = new HttpClient();
		try {
			httpClient.start();
		} catch (Exception e) {
			e.printStackTrace();
		}

		// Prepare the transport
		Map<String, Object> options = new HashMap<String, Object>();
		ClientTransport transport = new LongPollingTransport(options, httpClient);

		// Create the BayeuxClient
		bayuexClient = new BayeuxClient(pubSubUrl, transport);
		
		bayuexClient.handshake();
		boolean handshaken = bayuexClient.waitFor(3000, BayeuxClient.State.CONNECTED);
		if (handshaken)
		{
			System.out.println("Connected to Cometd Http PubSub Platform");
		}
		else{
			System.out.println("Could not connect to Cometd Http PubSub Platform");
		}
	}

	public void declareOutputFields(OutputFieldsDeclarer declarer) {
		declarer.declare(new Fields("BioReactorStatus"));
	}
}