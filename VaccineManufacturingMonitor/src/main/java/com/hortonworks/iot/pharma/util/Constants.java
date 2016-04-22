package com.hortonworks.iot.pharma.util;

public class Constants {
	public static final String zkHost = "sandbox.hortonworks.com";
	public static final String zkPort = "2181";
	public static final String zkConnString = zkHost+":"+zkPort;
	public static final String IncomingBioReactorTopicName = "IncomingBioReactorEvents";
	public static final String IncomingFiltrationTopicName = "IncomingFiltrationEvents";
	
	public static final String pubSubUrl = "http://sandbox.hortonworks.com:8091/cometd";
	public static final String bioReactorStatusChannel = "/bioReactorStatus";
	public static final String filtrationStatusChannel = "/filtrationStatus";
	public static final String alertChannel = "/alert";
	
	public static final String nameNode = "hdfs://sandbox.hortonworks.com:8020";
	public static final String hivePath = "/demo/data/transaction_logs";
}
