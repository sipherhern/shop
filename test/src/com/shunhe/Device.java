package com.shunhe;

import java.sql.Timestamp;

/**
 * Device entity. @author MyEclipse Persistence Tools
 */

public class Device implements java.io.Serializable {

	// Fields

	private Integer deviceId;
	private Integer deviceAddress;
	private Timestamp deviceCreatedTime;
	private Double ainputVoltage;
	private Double binputVoltage;
	private Double cinputVoltage;
	private Double ainputCurrent;
	private Double binputCurrent;
	private Double cinputCurrent;
	private Double aoutputVoltage;
	private Double boutputVoltage;
	private Double coutputVoltage;
	private Double areactivePower;
	private Double breactivePower;
	private Double creactivePower;

	// Constructors

	/** default constructor */
	public Device() {
	}

	/** full constructor */
	public Device(Integer deviceAddress, Timestamp deviceCreatedTime,
			Double ainputVoltage, Double binputVoltage, Double cinputVoltage,
			Double ainputCurrent, Double binputCurrent, Double cinputCurrent,
			Double aoutputVoltage, Double boutputVoltage,
			Double coutputVoltage, Double areactivePower,
			Double breactivePower, Double creactivePower) {
		this.deviceAddress = deviceAddress;
		this.deviceCreatedTime = deviceCreatedTime;
		this.ainputVoltage = ainputVoltage;
		this.binputVoltage = binputVoltage;
		this.cinputVoltage = cinputVoltage;
		this.ainputCurrent = ainputCurrent;
		this.binputCurrent = binputCurrent;
		this.cinputCurrent = cinputCurrent;
		this.aoutputVoltage = aoutputVoltage;
		this.boutputVoltage = boutputVoltage;
		this.coutputVoltage = coutputVoltage;
		this.areactivePower = areactivePower;
		this.breactivePower = breactivePower;
		this.creactivePower = creactivePower;
	}

	// Property accessors

	public Integer getDeviceId() {
		return this.deviceId;
	}

	public void setDeviceId(Integer deviceId) {
		this.deviceId = deviceId;
	}

	public Integer getDeviceAddress() {
		return this.deviceAddress;
	}

	public void setDeviceAddress(Integer deviceAddress) {
		this.deviceAddress = deviceAddress;
	}

	public Timestamp getDeviceCreatedTime() {
		return this.deviceCreatedTime;
	}

	public void setDeviceCreatedTime(Timestamp deviceCreatedTime) {
		this.deviceCreatedTime = deviceCreatedTime;
	}

	public Double getAinputVoltage() {
		return this.ainputVoltage;
	}

	public void setAinputVoltage(Double ainputVoltage) {
		this.ainputVoltage = ainputVoltage;
	}

	public Double getBinputVoltage() {
		return this.binputVoltage;
	}

	public void setBinputVoltage(Double binputVoltage) {
		this.binputVoltage = binputVoltage;
	}

	public Double getCinputVoltage() {
		return this.cinputVoltage;
	}

	public void setCinputVoltage(Double cinputVoltage) {
		this.cinputVoltage = cinputVoltage;
	}

	public Double getAinputCurrent() {
		return this.ainputCurrent;
	}

	public void setAinputCurrent(Double ainputCurrent) {
		this.ainputCurrent = ainputCurrent;
	}

	public Double getBinputCurrent() {
		return this.binputCurrent;
	}

	public void setBinputCurrent(Double binputCurrent) {
		this.binputCurrent = binputCurrent;
	}

	public Double getCinputCurrent() {
		return this.cinputCurrent;
	}

	public void setCinputCurrent(Double cinputCurrent) {
		this.cinputCurrent = cinputCurrent;
	}

	public Double getAoutputVoltage() {
		return this.aoutputVoltage;
	}

	public void setAoutputVoltage(Double aoutputVoltage) {
		this.aoutputVoltage = aoutputVoltage;
	}

	public Double getBoutputVoltage() {
		return this.boutputVoltage;
	}

	public void setBoutputVoltage(Double boutputVoltage) {
		this.boutputVoltage = boutputVoltage;
	}

	public Double getCoutputVoltage() {
		return this.coutputVoltage;
	}

	public void setCoutputVoltage(Double coutputVoltage) {
		this.coutputVoltage = coutputVoltage;
	}

	public Double getAreactivePower() {
		return this.areactivePower;
	}

	public void setAreactivePower(Double areactivePower) {
		this.areactivePower = areactivePower;
	}

	public Double getBreactivePower() {
		return this.breactivePower;
	}

	public void setBreactivePower(Double breactivePower) {
		this.breactivePower = breactivePower;
	}

	public Double getCreactivePower() {
		return this.creactivePower;
	}

	public void setCreactivePower(Double creactivePower) {
		this.creactivePower = creactivePower;
	}

}