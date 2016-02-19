package com.shunhe.service;

import org.springframework.stereotype.Service;

import com.shunhe.PageBean;
@Service
public interface deviceService {

	public PageBean recordSearch(String startDate, String endDate,
			int pageSize, int page) throws Exception;
}
