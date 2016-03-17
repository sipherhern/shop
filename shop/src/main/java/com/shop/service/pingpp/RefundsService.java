package com.shop.service.pingpp;

import com.pingplusplus.model.Charge;
import com.pingplusplus.model.Refund;

public interface RefundsService {
	 public Refund refund(Charge charge);
	 public void retrieve(String id, Charge charge);
	 public void all(Charge charge);
}
