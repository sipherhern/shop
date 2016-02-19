package com.shunhe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.shunhe.Admin;
import com.shunhe.dao.AdminDAO;
import com.shunhe.service.adminService;
@Component
public class adminServiceImpl implements adminService {
	
	@Autowired
	private AdminDAO adminDao;

	@Override
	public int loginValidation(String adminName, String password) throws Exception {
		try{
			Admin a = adminDao.findUserByNameAndPass(adminName, password);
			if(a != null)
			{
				return a.getId();
			}
		}catch(Exception e){
			e.printStackTrace();
			throw new Exception("用户名/密码不匹配");
		}
		return -1;
	}
}
