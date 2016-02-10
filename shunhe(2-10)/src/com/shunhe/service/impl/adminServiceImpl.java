package com.shunhe.service.impl;

import com.shunhe.Admin;
import com.shunhe.dao.AdminDAO;
import com.shunhe.service.adminService;

public class adminServiceImpl implements adminService {
	
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
			throw new Exception("验证用户登录异常");
		}
		return -1;
	}

}
