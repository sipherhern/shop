package com.shop.service.pingpp;

public interface AuthWebHookService {
	public boolean Varify();
	public void init(String wEBHOOK_INFO,
			String hEADER_SIGN);
}
