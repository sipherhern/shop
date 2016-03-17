package com.shop.controller.user;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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
import com.shop.entity.Collect;
import com.shop.service.CollectService;
import com.shop.util.JacksonUtil;

@Controller
@RequestMapping("/user/collect")
public class CollectController extends RequestContext {

	@Autowired
	private CollectService collectService;

	/**
	 * 
	 * @param res
	 * @param json
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "followProduct", method = RequestMethod.POST, consumes = "application/json")
	public void followProduct(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		Collect collect = new Collect();
		try {
			collect = objectMapper.readValue(json.toString(), Collect.class);
			res.setStatus(collectService.followProduct(collect));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 
	 * @param res
	 * @param json
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "unfollowProduct", method = RequestMethod.POST, consumes = "application/json")
	public void unfollowProduct(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		int cust_id = json.getInt("custId");
		int prod_id = json.getInt("prodId");
		res.setStatus(collectService.unfollowProduct(prod_id, cust_id));
	}

	/**
	 * 
	 * @param res
	 * @param json
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "findFollProdByPage", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray findFollProdByPage(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		int cust_id = json.getInt("custId");
		int pageIndex = json.getInt("pageIndex");
		int pageSize = json.getInt("pageSize");
		List<Map<String, Object>> result = collectService.getProdCollectPage(
				cust_id, pageIndex, pageSize);
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

	/**
	 * 
	 * @param res
	 * @param json
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "findFollShopByPage", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray findFollShopByPage(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		int cust_id = json.getInt("custId");
		int pageIndex = json.getInt("pageIndex");
		int pageSize = json.getInt("pageSize");
		json.remove("custId");
		List<Map<String, Object>> result = collectService.getShopCollectPage(
				cust_id, pageIndex, pageSize);
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

}
