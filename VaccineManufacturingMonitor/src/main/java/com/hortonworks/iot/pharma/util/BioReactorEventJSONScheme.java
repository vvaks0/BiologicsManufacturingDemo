package com.hortonworks.iot.pharma.util;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.hortonworks.iot.pharma.events.BioReactorStatus;

import backtype.storm.spout.Scheme;
import backtype.storm.tuple.Fields;
import backtype.storm.tuple.Values;

public class BioReactorEventJSONScheme implements Scheme {
	private static final long serialVersionUID = 1L;
	private static final Charset UTF8 = Charset.forName("UTF-8");

    public List<Object> deserialize(final byte[] bytes) {
        String eventJSONString = new String(bytes, UTF8);
        BioReactorStatus bioReactorStatus = null;
        ObjectMapper mapper = new ObjectMapper();
        
        try {
        	bioReactorStatus = mapper.readValue(eventJSONString, BioReactorStatus.class);
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
        return new Values(bioReactorStatus);
    }

    public Fields getOutputFields() {
        return new Fields("BioReactorStatus");
    }
}