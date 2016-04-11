package com.hortonworks.iot.pharma.bolts;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.cometd.client.BayeuxClient;
import org.cometd.client.transport.ClientTransport;
import org.cometd.client.transport.LongPollingTransport;
import org.eclipse.jetty.client.HttpClient;

import com.hortonworks.iot.pharma.events.BioReactorStatus;
import com.hortonworks.iot.pharma.util.Constants;

import backtype.storm.task.OutputCollector;
import backtype.storm.task.TopologyContext;
import backtype.storm.topology.OutputFieldsDeclarer;
import backtype.storm.topology.base.BaseRichBolt;
import backtype.storm.tuple.Fields;
import backtype.storm.tuple.Tuple;
import backtype.storm.tuple.Values;

public class DetectSubOptimalConditions extends BaseRichBolt{

	private String pubSubUrl = Constants.pubSubUrl;
	private String bioReactorStatusChannel = Constants.bioReactorStatusChannel;
	private BayeuxClient bayuexClient;
	private OutputCollector collector;
	
	public void execute(Tuple tuple)  {
		BioReactorStatus bioReactorStatus = (BioReactorStatus) tuple.getValueByField("BioReactorStatus");
		Map<String, Object> data = new HashMap<String, Object>();
		
		if(bioReactorStatus.getDisolvedOxygen() < .10){
			data.put("serialNumber", bioReactorStatus.getSerialNumber());
			data.put("alertType", "O2");
			data.put("alert", "Disolved Oxygen has dropped to critical level.");
		}if(bioReactorStatus.getPhLevel() < 6.2){
			data.put("serialNumber", bioReactorStatus.getSerialNumber());
			data.put("alertType", "PH");
			data.put("alertDesc", "PH levels have dropped to critical level.");
		}
		
		bayuexClient.getChannel(bioReactorStatusChannel).publish(data);
		collector.ack(tuple);
	}

	@Override
	public void prepare(Map arg0, TopologyContext arg1, OutputCollector collector) {
		this.collector = collector;
		
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