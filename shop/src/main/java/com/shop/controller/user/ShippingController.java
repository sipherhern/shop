package com.shop.controller.user;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.controller.base.RequestContext;
import com.shop.entity.Customer;
import com.shop.service.ShippingService;
@Component
@RequestMapping(value = "/user/shipping")
public class ShippingController extends RequestContext {
	@Autowired
	private ShippingService shippingService;
	/**
	 * 获取单个商品的运费
	 * @throws IOException 
	 */
	@ResponseBody
	@RequestMapping(value = "getProductShipping", method = RequestMethod.POST,consumes = "application/json")
	public JSONObject getProductShipping(@RequestBody JSONObject json,
			HttpServletResponse response) throws IOException{
		int prod_id = json.getInt("prodId");
		BigDecimal value = shippingService.getProductShipping(prod_id);
		JSONObject res = new JSONObject();
		res.put("shipping", value);
		return res;
	}
	/**
	 * 获取订单的运费
	 * @throws IOException 
	 */
	@ResponseBody
	@RequestMapping(value = "getOrderShipping", method = RequestMethod.POST,consumes = "application/json")
	public JSONObject getOrderShipping(@RequestBody JSONObject json,
			HttpServletResponse response) throws IOException{
		int order_id = json.getInt("orderId");
		BigDecimal value = shippingService.getOrderShipping(order_id);
		JSONObject res = new JSONObject();
		res.put("shipping", value);
		return res;
	}
}
