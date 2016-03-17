package com.shop.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.entity.Customer;
import com.shop.entity.ProdCommt;
import com.shop.entity.Product;
import com.shop.entity.Shop;
import com.shop.entity.vo.PageSet;
import com.shop.service.CommentService;

@Component
@RequestMapping("/user/comment")
public class CommentController {

	@Autowired
	private CommentService commentService;

	/**
	 * 用户对某一个商品能够获取发起评论/咨询/投诉
	 * 
	 * @param json
	 * @param res
	 */
	@ResponseBody
	@RequestMapping(value = "/addcomment", method = RequestMethod.POST, consumes = "application/json")
	public void addcomment(@RequestBody JSONObject json, HttpServletResponse res) {

		ProdCommt commt = new ProdCommt();

		String prodUuid = null;
		String custUuid = null;
		String commtType = null;
		try {
			prodUuid = json.getString("prodUuid");
			custUuid = json.getString("custUuid");
			commtType = json.getString("commtType");
			commt.setCommtContent(json.getString("commtContent"));
		} catch (Exception e) {
			res.setStatus(203);
			e.printStackTrace();
			return;
		}

		commt.setCommtScore(json.getInt("commtScore"));
		commt.setCommtType(commtType);
		boolean status = commentService.addComment(commt, prodUuid, custUuid);
		
		if (!status) {
			res.setStatus(403);
			return;
		}

	}

	/**
	 * test Jackson
	 * 
	 * @param json
	 */
	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.POST, consumes = "application/json")
	public void add(@RequestBody JSONObject json, HttpServletResponse res) {

		String prodUuid = json.getString("prodUuid");
		String custUuid = json.getString("custUuid");

		ObjectMapper mapper = new ObjectMapper();

		json.remove("prodUuid");
		json.remove("custUuid");

		System.out.println(json);

		ProdCommt commt = null;
		try {
			commt = mapper.readValue(json.toString(), ProdCommt.class);
		} catch (IOException e) {
			e.printStackTrace();
		}

		boolean status = commentService.addComment(commt, prodUuid, custUuid);

		if (!status) {
			res.setStatus(403);
			return;
		}

	}

	/**
	 * 分页查询评论/咨询/投诉 用户对某一个商品能够获取发起评论/咨询/投诉
	 * 
	 * @param json
	 */
	@ResponseBody
	@RequestMapping(value = "/retrieveComment", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray retrieveComment(@RequestBody JSONObject json,
			HttpServletResponse res) {

		String pageIndex = null;
		String prodUuid = null;

		int pageSize = json.getInt("pageSize");

		pageIndex = json.getString("pageIndex");
		prodUuid = json.getString("prodUuid");
		PageSet<ProdCommt> commtpageSet = new PageSet<ProdCommt>();

		try {
			commtpageSet = commentService.retrieveComment(pageSize, prodUuid,
					pageIndex);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println(commtpageSet);

		/*
		 * 封装 Pageset
		 */

		List<ProdCommt> commtlist = commtpageSet.getList();

		System.out.println(commtlist);

		JSONArray jasonarray = new JSONArray();

		for (int i = 0; i < commtlist.size(); i++) {

			ProdCommt commt = commtlist.get(i);
			System.out.println(commt);

			/**
			 * 在将每个对象转为json对象的时候用setExcludes函数将级联的属性去除掉
			 */
			JsonConfig config = new JsonConfig();
			config.setExcludes(new String[] { "product", "customer" });
			JSONObject returnobject = JSONObject.fromObject(commt, config);
			System.out.println(returnobject);
			jasonarray.add(returnobject);
		}

		System.out.println("jasonarray = " + jasonarray);

		/**
		 * 在将每个对象转为json对象的时候用setExcludes函数将级联的属性去除掉
		 */
		JsonConfig config1 = new JsonConfig();
		config1.setExcludes(new String[] { "list", "userdefinedlist" });
		JSONObject jsonobject = JSONObject.fromObject(commtpageSet, config1);

		System.out.println("jsonobject =" + jsonobject);
		System.out.println("test");

		/**
		 * 封装 两个 json
		 */
		JSONObject returnjson = new JSONObject();

		returnjson.put("commtlist", jasonarray);
		returnjson.put("pageSet", jsonobject);
		System.out.println(returnjson);

		return jasonarray;

		/* return JsonView.Render(returnjson, res); */

		/* return jasonarray; */

		/*
		 * 
		 * 
		 * JSONObject returnjson = JSONObject.fromObject(commtpageSet);
		 * 
		 * 
		 * return returnjson;
		 * 
		 * return null;
		 */
	}

	/**
	 * 商铺能够回复评论/咨询/投诉
	 * 
	 * @param json
	 */
	@ResponseBody
	@RequestMapping(value = "/reply", method = RequestMethod.POST, consumes = "application/json")
	public void reply(@RequestBody JSONObject json, HttpServletResponse res) {

		String procUuid = json.getString("procUuid");
		String commtReply = json.getString("commtReply");

		boolean  status = commentService.replyComment(procUuid, commtReply);
		
		if (!status) {
			res.setStatus(403);
			return;
		}


	}

	/**
	 * 用户查看我的评论 用户分页查看到自己评价的记录
	 * 
	 * @param json
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/retrieveMyComment", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray retrieveMyComment(@RequestBody JSONObject json, HttpServletResponse res) {

		String pageIndex = null;
		String custUuid = null;

		int pageSize = json.getInt("pageSize");

		pageIndex = json.getString("pageIndex");
		custUuid = json.getString("custUuid");
		PageSet<ProdCommt> commtpageSet = new PageSet<ProdCommt>();

		try {
			commtpageSet = commentService.retrieveMyComment(pageSize, custUuid,
					pageIndex);
		} catch (Exception e) {
			e.printStackTrace();
		}

		/*
		 * 封装 Pageset
		 */

		List<ProdCommt> commtlist = commtpageSet.getList();
		JSONArray jasonarray = new JSONArray();

		for (int i = 0; i < commtlist.size(); i++) {

			ProdCommt commt = commtlist.get(i);
			/**
			 * 在将每个对象转为json对象的时候用setExcludes函数将级联的属性去除掉
			 */
			JsonConfig config = new JsonConfig();
			config.setExcludes(new String[] { "product", "customer" });
			JSONObject returnobject = JSONObject.fromObject(commt, config);
			jasonarray.add(returnobject);
		}

		/**
		 * 在将每个对象转为json对象的时候用setExcludes函数将级联的属性去除掉
		 */
		JsonConfig config1 = new JsonConfig();
		config1.setExcludes(new String[] { "list", "userdefinedlist" });
		JSONObject jsonobject = JSONObject.fromObject(commtpageSet, config1);
		/**
		 * 封装 两个 json
		 */
		JSONObject returnjson = new JSONObject();
		returnjson.put("commtlist", jasonarray);
		returnjson.put("pageSet", jsonobject);

		return jasonarray;

	}
	
	@ResponseBody
	@RequestMapping(value = "/addComplain", method = RequestMethod.POST, consumes = "application/json")
	public void addComplain(@RequestBody JSONObject json, HttpServletResponse res) {

		String procUuid = json.getString("procUuid");
		String commtReply = json.getString("commtReply");
		String custUuid = json.getString("custUuid");
		boolean status = commentService.addComplain(procUuid, commtReply, custUuid);

		if (!status) {
			res.setStatus(403);
			return;
		}

	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "/addconsult", method = RequestMethod.POST, consumes = "application/json")
	public void addconsult(@RequestBody JSONObject json, HttpServletResponse res) {

		String procUuid = json.getString("procUuid");
		String commtReply = json.getString("commtReply");

		boolean status =  commentService.addconsult(procUuid, commtReply);

		if (!status) {
			res.setStatus(403);
			return;
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/LookMycomplain", method = RequestMethod.POST, consumes = "application/json")
	public JSONObject LookMycomplain(@RequestBody JSONObject json, HttpServletResponse res) {

		String procUuid = json.getString("procUuid");
		String commtReply = json.getString("commtReply");

		PageSet<ProdCommt> commtpageSet = commentService.LookMycomplain(procUuid, commtReply);

		
		
		
		List<ProdCommt> commtlist = commtpageSet.getList();
		JSONArray jasonarray = new JSONArray();

		for (int i = 0; i < commtlist.size(); i++) {

			ProdCommt commt = commtlist.get(i);
			/**
			 * 在将每个对象转为json对象的时候用setExcludes函数将级联的属性去除掉
			 */
			JsonConfig config = new JsonConfig();
			config.setExcludes(new String[] { "product", "customer" });
			JSONObject returnobject = JSONObject.fromObject(commt, config);
			jasonarray.add(returnobject);
		}

		/**
		 * 在将每个对象转为json对象的时候用setExcludes函数将级联的属性去除掉
		 */
		JsonConfig config1 = new JsonConfig();
		config1.setExcludes(new String[] { "list", "userdefinedlist" });
		JSONObject jsonobject = JSONObject.fromObject(commtpageSet, config1);
		/**
		 * 封装 两个 json
		 */
		JSONObject returnjson = new JSONObject();
		returnjson.put("commtlist", jasonarray);
		returnjson.put("pageSet", jsonobject);

		return returnjson;

	}
	
	
	@ResponseBody
	@RequestMapping(value = "/lookMyConsult", method = RequestMethod.POST, consumes = "application/json")
	public JSONObject lookMyConsult(@RequestBody JSONObject json, HttpServletResponse res) {

		String procUuid = json.getString("procUuid");
		String commtReply = json.getString("commtReply");

		PageSet<ProdCommt> commtpageSet = commentService.lookMyConsult(procUuid, commtReply);

		
		
		
		List<ProdCommt> commtlist = commtpageSet.getList();
		JSONArray jasonarray = new JSONArray();

		for (int i = 0; i < commtlist.size(); i++) {

			ProdCommt commt = commtlist.get(i);
			/**
			 * 在将每个对象转为json对象的时候用setExcludes函数将级联的属性去除掉
			 */
			JsonConfig config = new JsonConfig();
			config.setExcludes(new String[] { "product", "customer" });
			JSONObject returnobject = JSONObject.fromObject(commt, config);
			jasonarray.add(returnobject);
		}

		/**
		 * 在将每个对象转为json对象的时候用setExcludes函数将级联的属性去除掉
		 */
		JsonConfig config1 = new JsonConfig();
		config1.setExcludes(new String[] { "list", "userdefinedlist" });
		JSONObject jsonobject = JSONObject.fromObject(commtpageSet, config1);
		/**
		 * 封装 两个 json
		 */
		JSONObject returnjson = new JSONObject();
		returnjson.put("commtlist", jasonarray);
		returnjson.put("pageSet", jsonobject);

		return returnjson;

	}
	
	/**
	 * 获取所有待回复的评论
	 * @param json
	 * @param res
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/getwaitreply", method = RequestMethod.POST, consumes = "application/json")
	public JSONObject getwaitreply(@RequestBody JSONObject json, HttpServletResponse res){
		
		int pageSize = json.getInt("pageSize");
		
		String shopUuid = json.getString("shopUuid");
		
		String pageIndex = json.getString("pageIndex");
		
		PageSet<ProdCommt> prodPageSet = commentService.getwaitreply(pageSize, pageIndex, shopUuid);
		
		List<ProdCommt> commttlist = prodPageSet.getList();
		JSONArray jsonarray = new JSONArray();
		for(int i =0; i<commttlist.size(); i++){
			
			JsonConfig configprod = new JsonConfig();
			configprod.setExcludes(new String[] {"product","customer"});	
			JSONObject jsonproduct = JSONObject.fromObject(commttlist.get(i), configprod);
			jsonarray.add(jsonproduct);
		}
		
	
		JsonConfig configcart = new JsonConfig();
		configcart.setExcludes(new String[] {"list" ,"userdefinedlist"});
		JSONObject pagejson = JSONObject.fromObject(prodPageSet, configcart);	
		
		
		JSONObject returnobject = new JSONObject();
		
		returnobject.put("pageSet", pagejson);
		returnobject.put("productlist", jsonarray);
	
		return returnobject;
	}
	
	
	

	@Test
	public void test1() {
		Customer cust = new Customer();

		cust.setCustUname("custUname");

		Shop shop = new Shop();

		shop.setShopInfo("shopInfo");

		shop.setCustomer(cust);

		Product p = new Product();

		p.setProdName("prodName");

		p.setShop(shop);

		JSONObject returnobject = JSONObject.fromObject(p);

		System.out.println(returnobject);

	}

}
