package com.shop.controller.system;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.Category;
import com.shop.entity.Product;
import com.shop.entity.SkuProd;
import com.shop.entity.vo.CategoryForm;
import com.shop.entity.vo.ReturnProduct;
import com.shop.service.CategoryService;

@Component
@RequestMapping(value = "/system/category")
public class SysCategoryController {

	@Autowired
	private CategoryService categoryservice;

	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public void test() {

		String test = "test";

		categoryservice.test(test);

		System.out.println("ddd");
	}


	@RequestMapping(value = "/addcate", method = RequestMethod.POST)
	public String addcate(HttpServletResponse res, CategoryForm cateform,
			Product product, String shopUuid, String shipUuid,
			HttpServletRequest req) {
		
		System.out.println("productId = " + product.getProdId());
		
		List<List<String>> lists = new ArrayList<List<String>>();
		
		lists.add(cateform.getColors());
		lists.add(cateform.getEditions());
		lists.add(cateform.getGrids());
		lists.add(cateform.getMemory());
		lists.add(cateform.getNetcontents());
		lists.add(cateform.getSizes());
				
		
		List<Category> cates= cateform.getCates(); 
		List<SkuProd> skuprods = cateform.getSkuprods();
		
		System.out.println("skuprods = " + skuprods);
		
		ReturnProduct returnproduct = categoryservice.addcate(cates, shopUuid, lists, skuprods, product);

		System.out.println("cate: ddd");
		
		/**
		 * 返回  shipUuid
		 */
		returnproduct.setShipUuid(shipUuid);
		returnproduct.setSkuprods(skuprods);
		req.setAttribute("returnproduct", returnproduct);

		System.out.println(returnproduct);
		return "forward:/system/product/addproduct";
	}	
	
	/**
	 * 查找 全局 商品 cate1 分类
	 * @param json
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/findAllcate1", method = RequestMethod.POST)
	public String findAllcate1(HttpServletResponse res){
		
		
		List<Category> catelist =  categoryservice.findsku1Bycate();
		
		return null;
	}
	
	/**
	 * 全局  查找  子分类
	 * @param kindId
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/findcateChildren", method = RequestMethod.POST)
	public String findcateChildren(String kindId ,HttpServletResponse res){
		
		
		List<Category> catelist = categoryservice.findcateChildren(kindId);
		return null;
	}
	
	/**
	 * 全局  根据  cate3  查找  sku1 分类
	 * @param kindId
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/findsku1Bycate", method = RequestMethod.POST)
	public String findsku1Bycate(String kindId ,HttpServletResponse res){
		
		
		List<Category> skulist =  categoryservice.findsku1Bycate(kindId);
		
		return null;
	}
	

}
