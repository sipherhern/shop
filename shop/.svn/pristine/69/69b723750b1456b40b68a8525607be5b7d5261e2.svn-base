package com.shop.service.pingpp;

import net.sf.json.JSONObject;

import com.pingplusplus.model.Charge;
import com.pingplusplus.model.ChargeCollection;

public interface ChargeService {

	public Charge createCharge(JSONObject jsonobject);
	public Charge retrieve(String id);//根据chargeID查询charge对象
	public ChargeCollection all();//批量查询charge，列表是按创建时间进行排序，总是将最新的 charge 对象显示在最前。
}
