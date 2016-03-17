package com.shop.controller.system;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.controller.base.RequestContext;
import com.shop.entity.Promotion;
import com.shop.service.PromotionService;

@Controller
@RequestMapping("/shopsys/promotion")
public class SysPromotionController extends RequestContext {

	@Autowired
	private PromotionService promotionService;

	@RequestMapping(value = "addPromotion", method = RequestMethod.POST)
	public void addPromotion(HttpServletRequest req, HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		Promotion promotion = new Promotion();
		int prod_id = 0;
		try {
			prod_id = json.getInt("prodId");
			json.remove("prodId");
			promotion = objectMapper
					.readValue(json.toString(), Promotion.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		res.setStatus(promotionService.addPromotion(promotion, prod_id));
		// req.setAttribute("promotion", promotion);
		// req.getServletContext().getRequestDispatcher("/shopsys/product/test").forward(req,res);
		// return null;
		// return "forward:/shopsys/product/test";
	}

 
	@RequestMapping(value = "updatePromotion", method = RequestMethod.POST)
	public void updatePromotion(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		Promotion promotion = new Promotion();
		int prod_id = 0;
		try {
			prod_id = json.getInt("prodId");
			json.remove("prodId");
			promotion = objectMapper
					.readValue(json.toString(), Promotion.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		res.setStatus(promotionService.updatePromotion(promotion, prod_id));
	}

 
	@RequestMapping(value = "delPromotion", method = RequestMethod.POST)
	public void delPromotion(HttpServletResponse res,
			@RequestBody JSONObject json) throws Exception {
		int prom_id = json.getInt("promId");
		res.setStatus(promotionService.deletePromotion(prom_id));
	}
}
