package com.shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.shop.entity.Customer;
import com.shop.service.CustomerService;
@Component

public class CustomerServiceImpl extends BaseServiceImpl<Object> implements CustomerService{
	@Override
	public Customer login(Customer customer) {
		// TODO Auto-generated method stub

		Map<String, Object> user = new HashMap<String, Object>();
		user.put("custUname", customer.getCustUname());
		user.put("custPwd", customer.getCustPwd());
		List<?> result = this.find("from Customer as c where c.custUname = :custUname and c.custPwd = :custPwd", user);
		if (result.isEmpty() == false) {
			return (Customer) result.get(0);
		}
		else
			return null;
	}
}
