package com.shop.service;

import java.math.BigDecimal;
import java.util.List;

import com.shop.entity.Shipping;
import com.shop.entity.vo.ShipForm;

public interface ShippingService {
	//system操作
	public void addShipping(ShipForm shipform);
	public void deleteShipping(String uuid);
	public void updateShipping(ShipForm shipform);
	public List<Object> listAllShippingByPage(int pageSize,int pageIndex);
	public List<Shipping> listOneShipping(String uuid);
	//user操作
	//获取单个商品的运费
	public BigDecimal getProductShipping(int prod_id);
	//获取订单的运费
	public BigDecimal getOrderShipping(int order_id);
}
