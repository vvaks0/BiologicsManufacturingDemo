package com.hortonworks.iot.pharma.util;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;

import org.apache.storm.kafka.StringScheme;
import org.apache.storm.spout.Scheme;
import org.apache.storm.tuple.Fields;
import org.apache.storm.tuple.Values;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.hortonworks.iot.pharma.events.FiltrationStatus;

/*
import backtype.storm.spout.Scheme;
import backtype.storm.tuple.Fields;
import backtype.storm.tuple.Values;
*/

public class FiltrationEventJSONScheme implements Scheme {
	private static final long serialVersionUID = 1L;
	private static final Charset UTF8 = Charset.forName("UTF-8");

	public List<Object> deserialize(ByteBuffer value) {
		String eventJSONString = StringScheme.deserializeString(value);
		FiltrationStatus filtrationStatus = null;
        ObjectMapper mapper = new ObjectMapper();
        
        try {
        	filtrationStatus = mapper.readValue(eventJSONString, FiltrationStatus.class);
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
        return new Values(filtrationStatus);
	}
	
    public List<Object> deserialize(final byte[] bytes) {
        String eventJSONString = new String(bytes, UTF8);
        FiltrationStatus filtrationStatus = null;
        ObjectMapper mapper = new ObjectMapper();
        
        try {
        	filtrationStatus = mapper.readValue(eventJSONString, FiltrationStatus.class);
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
        return new Values(filtrationStatus);
    }

    public Fields getOutputFields() {
        return new Fields("FiltrationStatus");
    }
}