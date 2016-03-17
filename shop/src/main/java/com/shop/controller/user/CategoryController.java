package com.shop.controller.user;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.Category;
import com.shop.entity.SkuProd;
import com.shop.service.CategoryService;
import com.shop.util.JSONConfig;

@Component
@RequestMapping(value = "/user/category")
public class CategoryController {

	@Autowired
	private CategoryService categoryservice;

	@ResponseBody
	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public void test() {

		String test = "test";

		categoryservice.test(test);

		System.out.println("ddd");
	}

	/**
	 * 查找当前店铺的所有分类
	 * 
	 * @param json
	 * @param res
	 */
	@ResponseBody
	@RequestMapping(value = "/findcateByshop", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray findCateByShop(@RequestBody JSONObject json,
			HttpServletResponse res) {

		String shopUuid = json.getString("shoUuid");

		List<Category> catelist = categoryservice.findCateByShop(shopUuid);

		System.out.println(catelist);

		JSONArray jsonarray = new JSONArray();

		for (int i = 0; i < catelist.size(); i++) {
			JSONObject jsonobject = new JSONObject();
			jsonobject = JSONObject.fromObject(catelist.get(i),
					JSONConfig.categoryConfig());
			jsonarray.add(jsonobject);
		}

		return jsonarray;
	}

	/**
	 * 查找 商品的 所有 sku 属性 及 商品 的 最低 价 和 最 高价
	 * 
	 * @param json
	 * @param res
	 */
	@ResponseBody
	@RequestMapping(value = "/getSkuByProd", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray getSkuByProd(@RequestBody JSONObject json,
			HttpServletResponse res) {

		String prodUuid = json.getString("prodUuid");

		List<SkuProd> skuprodlist = categoryservice.getSkuByProd(prodUuid);
		if (skuprodlist == null) {
			return null;
		}

		/**
		 * 找 所有的 sku 二级 属性
		 */
		Set<Category> skuoneset = new HashSet<Category>();

		System.out.println(skuprodlist.size());
		/**
		 * 初始化 价格
		 */
		BigDecimal min = new BigDecimal(0);
		BigDecimal max = new BigDecimal(0);
		for (int i = 0; i < skuprodlist.size(); i++) {
			SkuProd skuprod = skuprodlist.get(i);
			/**
			 * 排除重复
			 */
			if (skuprod.getCategoryBySku2Id1() != null) {
				skuoneset.add(skuprod.getCategoryBySku2Id1());
			}
			if (skuprod.getCategoryBySku2Id2() != null) {
				skuoneset.add(skuprod.getCategoryBySku2Id2());
			}

			if (skuprod.getProdPrice() != null && min.compareTo(skuprod.getProdPrice()) == -1) {
				min = skuprod.getProdPrice();
			}
			if (skuprod.getProdPrice() != null && max.compareTo(skuprod.getProdPrice()) == 1) {
				max = skuprod.getProdPrice();
			}
		}

		List<Category> sku1 = new ArrayList<Category>();

		List<Category> sku2 = new ArrayList<Category>();

		System.out.println(skuoneset + "skuoneset");
		for (Category cate : skuoneset) {
			Category parent = cate.getCategory();
			if (sku1.size() != 0) {

				if (sku1.get(0).equals(parent)) {
					sku1.add(cate);

				} else {

					if (sku2.size() != 0) {
						sku2.add(cate);
					} else {
						sku2.add(parent);
						sku2.add(cate);
					}
				}

			} else {
				sku1.add(parent);
				sku1.add(cate);
			}

		}

		System.out.println(sku1 + "sku1");
		System.out.println(sku2 + "sku2");

		JSONArray returnarray = new JSONArray();
		JSONObject price = new JSONObject();
		price.put("min", min);
		price.put("max", max);
		returnarray.add(price);

		/**
		 * 组装 返回值
		 */
		if (sku1.size() != 0) {

			JSONArray sku1array = new JSONArray();

			for (Category cate : sku1) {
				Category cate1 = new Category(cate);
				JSONObject object = JSONObject.fromObject(cate1,
						JSONConfig.categoryConfig());
				sku1array.add(object);
			}

			returnarray.add(sku1array);
		}
		if (sku2.size() != 0) {

			JSONArray sku1array = new JSONArray();

			for (Category cate : sku2) {
				Category cate1 = new Category(cate);
				JSONObject object = JSONObject.fromObject(cate1,
						JSONConfig.categoryConfig());
				sku1array.add(object);
			}

			returnarray.add(sku1array);
		}

		System.out.println(returnarray);

		return returnarray;
	}

	/**
	 * 根据商品sku 获取 价格 数量
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/findSkuProdBySku", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray findSkuProdBySku(@RequestBody JSONObject json,
			HttpServletResponse res) {
		int kindId = json.getInt("kindId");
		String prodUuid = json.getString("prodUuid");

		List<SkuProd> skuprod = categoryservice.findSkuProdBySku(prodUuid,
				kindId);
		JSONArray returnarray = new JSONArray();
		if(skuprod == null){
			return null;
		}
		for (int i = 0; i < skuprod.size(); i++) {
			SkuProd sp = new SkuProd(skuprod.get(i));
			
			System.out.println("sssss");
			JSONObject returnjson = JSONObject.fromObject(sp,
					JSONConfig.skuProdConfig());
			
			if(skuprod.get(i).getCategoryBySku2Id1() != null){
			Category cate1 = new Category(skuprod.get(i).getCategoryBySku2Id1());
			
			System.out.println("sssss  1"); 
			JSONObject jsoncate1 = JSONObject.fromObject(cate1, JSONConfig.categoryConfig());
			returnjson.put("sku1", jsoncate1);
			}
			if(skuprod.get(i).getCategoryBySku2Id2() != null){
			Category cate2 = new Category(skuprod.get(i).getCategoryBySku2Id2());
			System.out.println("sssss  2  ");
			JSONObject jsoncate2 = JSONObject.fromObject(cate2, JSONConfig.categoryConfig());
			returnjson.put("sku2", jsoncate2);
			}
			
			returnarray.add(returnjson);
		}

		return returnarray;
	}
}
