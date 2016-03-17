package com.shop.controller.user;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.controller.base.RequestContext;
import com.shop.entity.Pictures;
import com.shop.entity.Product;
import com.shop.entity.Promotion;
import com.shop.entity.Shop;
import com.shop.service.PromotionService;
import com.shop.util.JacksonUtil;

@SuppressWarnings("rawtypes")
@Controller
@RequestMapping("/user/promotion")
public class PromotionController extends RequestContext {

	@Autowired
	private PromotionService promotionService;

	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "getPromotionByPage", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray getPromotionByPage(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		int shop_id = json.getInt("shopId");
		int pageIndex = json.getInt("pageIndex");
		int pageSize = json.getInt("pageSize");
		List<Map<String, Object>> result = promotionService.getPromotionByPage(
				shop_id, pageIndex, pageSize);
		if (result.isEmpty()) {
			res.setStatus(204);
			return null;
		}
		JacksonUtil jacksonutil = new JacksonUtil();
		jacksonutil.setNullValueFitter();
		String resultString = jacksonutil.getMapper()
				.writeValueAsString(result);
		JSONArray jsonArray = JSONArray.fromObject(resultString);
		return jsonArray;
	}

	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "getAllPromByPage", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray getAllPromByPage(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		int pageIndex = json.getInt("pageIndex");
		int pageSize = json.getInt("pageSize");
		List<Map<String, Object>> result = promotionService.getAllPromByPage(
				pageIndex, pageSize);
		if (result.isEmpty()) {
			res.setStatus(204);
			return null;
		}
		
		JacksonUtil jacksonutil = new JacksonUtil();
		jacksonutil.setNullValueFitter();
		String resultString = jacksonutil.getMapper()
				.writeValueAsString(result);
		JSONArray jsonArray = JSONArray.fromObject(resultString);
		return jsonArray;
	}

	@ResponseBody
	@RequestMapping(value = "getPromToHomePage", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray getPromToHomePage(HttpServletResponse res)
			throws Exception {
		JSONObject json = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		//Promotion prom = new Promotion();
		Product product = new Product();
		Pictures picture = new Pictures();
		Shop shop = new Shop();
		List list = promotionService.getPromToHomepage();
		for (Object object : list) {
			Object[] obj = (Object[]) object;
			product = (Product) obj[0];
			//prom = (Promotion) obj[1];
			picture = (Pictures) obj[2];
			shop = (Shop) obj[3];
			json.put("prodId", product.getProdId());
			json.put("prodUuid", product.getProdUuid());
			json.put("prodName", product.getProdName());
			json.put("prodPrice", product.getProdPrice());
			//json.put("promPrice", prom.getPromPrice());
			//json.put("promDiscount", prom.getPromDiscount());
			json.put("picUrl", picture.getPicUrl());
			json.put("shopUuid",shop.getShopUuid());
			jsonArray.add(json);
		}
		return jsonArray;
	}

}
