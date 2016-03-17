package com.shop.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.Cartitem;
import com.shop.entity.Category;
import com.shop.entity.PictureRelate;
import com.shop.entity.Pictures;
import com.shop.entity.Product;
import com.shop.entity.SkuProd;
import com.shop.entity.vo.PageSet;
import com.shop.service.CartService;
import com.shop.util.JSONConfig;

@Component
@RequestMapping(value = "/user/cart")
public class CartController {

	@Autowired
	private CartService cartservice;

	@ResponseBody
	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public void test() {

		String test = "product : test";

		cartservice.test(test);

		System.out.println("ddd");
	}

	/**
	 * 添加商品至购物车
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/addProduct", method = RequestMethod.POST, consumes = "application/json")
	public void addProduct(@RequestBody JSONObject json, HttpServletResponse res) {

		Integer skuprodId = json.getInt("skuprodId");

		Integer prodNum = json.getInt("prodNum");

		String custUuid = json.getString("custUuid");

		boolean status = cartservice.addProduct(custUuid, prodNum, skuprodId);

		if (!status) {
			res.setStatus(403);
			return;
		}

	}

	/**
	 * 更新商品数量
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/updateProductNum", method = RequestMethod.POST, consumes = "application/json")
	public void updateProductNum(@RequestBody JSONObject json,
			HttpServletResponse res) {

		String prodUuid = json.getString("prodUuid");

		String custUuid = json.getString("custUuid");

		int cartitemQuantity = json.getInt("prodNum");

		boolean status = cartservice.updateProductNum(prodUuid,
				cartitemQuantity, custUuid);

		if (!status) {
			res.setStatus(403);
			return;
		}
	}

	/**
	 * 清空购物车
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/clearCart", method = RequestMethod.POST, consumes = "application/json")
	public void clearCart(@RequestBody JSONObject json, HttpServletResponse res) {

		String custUuid = json.getString("custUuid");
		boolean status = cartservice.clearCart(custUuid);

		if (!status) {
			res.setStatus(403);
			return;
		}
	}

	/**
	 * 从购物车 移除商品
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/delproduct", method = RequestMethod.POST, consumes = "application/json")
	public void delproduct(@RequestBody JSONObject json, HttpServletResponse res) {

		String prodUuid = json.getString("prodUuid");

		String custUuid = json.getString("custUuid");

		boolean status = cartservice.delproduct(prodUuid, custUuid);

		if (!status) {
			res.setStatus(403);
			return;
		}

	}

	/**
	 * 查看我的购物车
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/lookMyCart", method = RequestMethod.POST, consumes = "application/json")
	public JSONArray lookMyCart(@RequestBody JSONObject json,
			HttpServletResponse res) {

		String custUuid = json.getString("custUuid");

		Integer pageSize = json.getInt("pageSize");

		String pageIndex = json.getString("pageIndex");

		PageSet<Cartitem> pagecart = cartservice.lookMyCart(custUuid, pageSize,
				pageIndex);
		List<Cartitem> cart = pagecart.getList();

		System.out.println(cart);

		JSONArray prodarray1 = new JSONArray();

		for (int i = 0; i < cart.size(); i++) {
			System.out.println("product..................................");
			JSONObject jsonobject = JSONObject.fromObject(cart.get(i),
					JSONConfig.cartitemConfig());

			SkuProd skuProd = cart.get(i).getSkuProd();

			Product product = new Product(skuProd.getProduct());

			/**
			 * product 的 过滤
			 */
			JSONObject prodobject = JSONObject.fromObject(product,
					JSONConfig.prodConfig());
			System.out.println(prodobject);
			jsonobject.put("product", prodobject);

			JSONArray skuarray = new JSONArray();

			/**
			 * sku2_id1 非空
			 */
			Category categoryBySkuId1 = skuProd.getCategoryBySku2Id1();

			if (categoryBySkuId1 != null) {
				Category cateBySkuId1 = new Category(categoryBySkuId1);
				JSONObject skuobject = JSONObject.fromObject(cateBySkuId1,
						JSONConfig.categoryConfig());
				skuarray.add(skuobject);
			}

			/**
			 * sku2_id1 非空
			 */
			Category categoryBySkuId2 = skuProd.getCategoryBySku2Id2();

			if (categoryBySkuId2 != null) {
				Category cateBySkuId2 = new Category(categoryBySkuId2);
				JSONObject skuobject = JSONObject.fromObject(cateBySkuId2,
						JSONConfig.categoryConfig());
				skuarray.add(skuobject);
			}

			jsonobject.put("skuarray", skuarray);
			/**
			 * 商品图片
			 */

			JSONArray picarray = new JSONArray();
			if (product.getPictureRelates() != null) {
				for (PictureRelate pr : product.getPictureRelates()) {
					Pictures pic = new Pictures(pr.getPictures());

					JSONObject picobject = JSONObject.fromObject(pic,
							JSONConfig.pictureConfig());
					picarray.add(picobject);
				}
			}
			jsonobject.put("picarray", picarray);
			prodarray1.add(jsonobject);

		}

		JSONObject pagejson = JSONObject.fromObject(pagecart,
				JSONConfig.pageSetConfig());

		JSONObject returnobject = new JSONObject();

		returnobject.put("pageSet", pagejson);
		returnobject.put("cart", prodarray1);

		return prodarray1;
	}
	
	

}
