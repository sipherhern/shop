package com.shunhe.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.shunhe.PageBean;
import com.shunhe.service.deviceService;

@SuppressWarnings("serial")
public class QueryAll extends ActionSupport {
	private int page;
	private String startDate;
	private String endDate;
	@Autowired
	private deviceService deviceService;

	
	private PageBean pageBean;

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String recordQuery() throws Exception {
		pageBean = deviceService.recordSearch(startDate, endDate, 1, page);
		return "success";
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

}
