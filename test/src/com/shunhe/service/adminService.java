package com.shunhe.service;

import org.springframework.stereotype.Service;

@Service
public interface adminService {
	
	public int loginValidation(String adminName, String password) throws Exception;

}
