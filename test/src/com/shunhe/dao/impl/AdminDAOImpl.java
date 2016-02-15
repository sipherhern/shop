package com.shunhe.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.shunhe.Admin;
import com.shunhe.dao.AdminDAO;
import com.shunhe.service.impl.BaseServiceImpl;
@Repository 
public class AdminDAOImpl extends BaseServiceImpl<Admin> implements AdminDAO{
	
    
	@Override
	public Admin findUserByNameAndPass(String adminName, String password) {
		Admin admin = new Admin();
		Map<String, Object> cust = new HashMap<String, Object>();
		cust.put("adminName", adminName);
		cust.put("password", password);
		try {
			String hql = "from Admin a where a.adminName = :adminName and a.password = :password ";
			List list = (List) this.find(hql,cust);
			admin = (Admin) list.get(0);
			return admin;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
