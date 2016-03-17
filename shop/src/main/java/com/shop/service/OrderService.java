package com.shop.service;

import java.math.BigDecimal;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.pingplusplus.model.Charge;

public interface OrderService {
	public JSONObject CreateDirectly(int prodAmount,int addressId,int customerId,
			int skuId);
	public JSONObject CreateByCartitem(int custId,int addressId);
	public void ConfirmOrder(JSONObject json,BigDecimal orderShipping);
	public JSONArray ListOrderByPage(int pageSize,int pageIndex,int custId);
	public Charge RequestPayOrder(JSONObject obj);
	public int FalseRemoveOrder(int orderId);
	public int CancelOrder(int orderId);
}
