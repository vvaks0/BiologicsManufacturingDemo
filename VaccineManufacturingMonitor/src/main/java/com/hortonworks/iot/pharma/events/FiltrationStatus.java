package com.hortonworks.iot.pharma.events;

import java.io.Serializable;

public class FiltrationStatus extends DeviceStatus implements Serializable {
	private static final long serialVersionUID = 1L;
    private Integer internalPressure;
    private Integer flowRate;
    private Integer flowTemp;
	
    public Integer getInternalPressure() {
		return internalPressure;
	}
	public void setInternalPressure(Integer internalPressure) {
		this.internalPressure = internalPressure;
	}
	public Integer getFlowRate() {
		return flowRate;
	}
	public void setFlowRate(Integer flowRate) {
		this.flowRate = flowRate;
	}
	public Integer getFlowTemp() {
		return flowTemp;
	}
	public void setFlowTemp(Integer flowTemp) {
		this.flowTemp = flowTemp;
	}
}
