package com.shunhe.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface DeviceDAO {
	List recordQuery(String startDate, String endDate, int offset, int length);

	int getCount(String startDate, String endDate);
}