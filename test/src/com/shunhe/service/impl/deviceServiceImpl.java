package com.shunhe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.shunhe.PageBean;
import com.shunhe.dao.DeviceDAO;
import com.shunhe.service.deviceService;
@Component
public class deviceServiceImpl implements deviceService {

	@Autowired
	private DeviceDAO deviceDAO;

	public PageBean recordSearch(String startDate, String endDate,
			int pageSize, int page) throws Exception {
		int count = deviceDAO.getCount(startDate, endDate); // 总记录数
		int totalPage = PageBean.countTotalPage(pageSize, count); // 总页数
		int offset = PageBean.countOffset(pageSize, page); // 当前页开始记录
		int length = pageSize; // 每页记录数
		int currentPage = PageBean.countCurrentPage(page);
		List list = deviceDAO.recordQuery(startDate, endDate, offset, length);
		// 把分页信息保存到Bean中
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(count);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		return pageBean;
	}

}
