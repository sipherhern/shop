package com.shunhe.dao.impl;

import java.util.HashMap;
import java.util.Map;

import antlr.collections.List;

import com.shunhe.Admin;
import com.shunhe.dao.AdminDAO;
import com.shunhe.service.impl.BaseServiceImpl;

public class AdminDAOImpl extends BaseServiceImpl<Admin> implements AdminDAO{
	

	@Override
	public Admin findUserByNameAndPass(String adminName, String password) {
		Admin admin = new Admin();
		Map<String, Object> cust = new HashMap<String, Object>();
		cust.put("adminName", adminName);
		cust.put("password", password);
		try {
			String hql = "from admin a where a.adminName = :adminName and a.password = :password ";
			List list = (List) this.find(hql,cust);
			admin.setAdminName(list.toString());
			admin.setPassword(list.toString());
			return admin;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
