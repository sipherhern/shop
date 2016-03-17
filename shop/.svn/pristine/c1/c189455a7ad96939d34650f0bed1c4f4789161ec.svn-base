package com.shop.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.controller.base.RequestContext;
import com.shop.entity.Address;
import com.shop.service.AddressService;

@Controller
@RequestMapping("/user/address")
public class AddressController extends RequestContext {

	@Autowired
	private AddressService addressService;

	/**
	 * 添加地址
	 * 
	 * @param res
	 * @param json
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "addAddress", method = RequestMethod.POST, consumes = "application/json")
	public void addAddress(HttpServletResponse res, @RequestBody JSONObject json)
			throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		Address address = new Address();
		try {
			address = objectMapper.readValue(json.toString(), Address.class);
			res.setStatus(addressService.addAddress(address));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 更新地址
	 * 
	 * @param res
	 * @param json
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "updateAddress", method = RequestMethod.POST, consumes = "application/json")
	public void updateAddress(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		Address address = new Address();
		try {
			address = objectMapper.readValue(json.toString(), Address.class);
			res.setStatus(addressService.updateAddress(address));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 删除地址
	 * 
	 * @param res
	 * @param json
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "delAddress", method = RequestMethod.POST, consumes = "application/json")
	public void delAddress(HttpServletResponse res, @RequestBody JSONObject json)
			throws Exception {
		int address_id = json.getInt("addressId");
		try {
			res.setStatus(addressService.delAddress(address_id));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取我的地址
	 * 
	 * @param res
	 * @param json
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	@ResponseBody
	@RequestMapping(value = "getAddressByPage", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray getAddressByPage(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		int cust_id = json.getInt("custId");
		int pageIndex = json.getInt("pageIndex");
		int pageSize = json.getInt("pageSize");
		JSONArray jsonArray = new JSONArray();
		try {
			List list = addressService.getAddressPage(cust_id, pageIndex,
					pageSize);
			if (list.isEmpty()) {
				res.setStatus(204);
				return null;
			} else {
				jsonArray = JSONArray.fromObject(list);
				res.setStatus(200);
				return jsonArray;
			}
		} catch (Exception e) {
			res.setStatus(404);
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("rawtypes")
	@ResponseBody
	@RequestMapping(value = "getDefaultAddress", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray getDefaultAddress(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		int cust_id = json.getInt("custId");
		JSONArray jsonArray = new JSONArray();
		try {
			List list = addressService.getDefaultAddress(cust_id);
			if (list.isEmpty()) {
				res.setStatus(204);
				return null;
			} else {
				jsonArray = JSONArray.fromObject(list);
				res.setStatus(200);
				return jsonArray;
			}
		} catch (Exception e) {
			res.setStatus(404);
			e.printStackTrace();
			return null;
		}
	}
}
