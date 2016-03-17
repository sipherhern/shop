package com.shop.controller.system;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.controller.base.RequestContext;
import com.shop.entity.Order;
import com.shop.entity.Product;
import com.shop.entity.SkuProd;
import com.shop.entity.vo.PageSet;
import com.shop.entity.vo.ReturnProduct;
import com.shop.service.ProductService;

@Component
@RequestMapping(value = "/system/product")
public class SysProductController extends RequestContext {

	@Autowired
	private ProductService productservice;

	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public void test() {

		String test = "Sysproduct : test";

		productservice.test(test);

		System.out.println("ddd");
	}

	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	public void addproduct(HttpServletRequest req) {

		ReturnProduct returnproduct = (ReturnProduct) req
				.getAttribute("returnproduct");

		System.out.println(returnproduct);

		productservice.addproduct(returnproduct);

		String test = "Sysproduct : test  : success";

		System.out.println(test);
	}

	/**
	 * 更改商品 详细信息
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
 
	@RequestMapping(value = "/updateproductdetail", method = RequestMethod.POST)
	public void updateproductdetail(Product product, HttpServletResponse res) {

		boolean b = productservice.updateproductdetail(product);

	}

	/**
	 * 更改 商品 sku
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
 
	@RequestMapping(value = "/updateskuprod", method = RequestMethod.POST)
	public void updateskuprod(Product product, SkuProd skuprod,
			HttpServletResponse res) {

		boolean b = productservice.updateskuprod(product, skuprod);
	}

	/**
	 * 删除商品
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
 
	@RequestMapping(value = "/detproduct", method = RequestMethod.POST)
	public void detproduct(Product product, HttpServletResponse res) {

		boolean b = productservice.delproduct(product);
	}

	/**
	 * 上下架商品
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
 
	@RequestMapping(value = "/updateproductstate", method = RequestMethod.POST)
	public void updateproductstate(Product product, HttpServletResponse res) {

		boolean b = productservice.updateproductstate(product);
	}

	/**
	 * 获取出售中 的 商品
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
 
	@RequestMapping(value = "/getSellingProduct", method = RequestMethod.POST)
	public String getSellingProduct(String pageIndex, String shopUuid,
			int pageSize, HttpServletResponse res) {
		PageSet<Product> prodPageSet = productservice.getSellingProduct(
				pageSize, pageIndex, shopUuid);
		return pageIndex;
	}

	/**
	 * 获取仓库中 的 商品
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
 
	@RequestMapping(value = "/getStorageProduct", method = RequestMethod.POST)
	public String getStorageProduct(String pageIndex, String shopUuid,
			int pageSize, HttpServletResponse res) {

		PageSet<Product> prodPageSet = productservice.getStorageProduct(
				pageSize, pageIndex, shopUuid);

		return null;
	}

	/**
	 * 获取审核中 的 商品
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
 
	@RequestMapping(value = "/getcheckingProduct", method = RequestMethod.POST)
	public String getcheckingProduct(String pageIndex, String shopUuid,
			int pageSize, HttpServletResponse res) {

		PageSet<Product> prodPageSet = productservice.getcheckingProduct(
				pageSize, pageIndex, shopUuid);

		return null;
	}

	/**
	 * 待发货的商品
	 * 
	 * @param json
	 * @param res
	 * @return
	 */
 
	@RequestMapping(value = "/getwaitdeliver", method = RequestMethod.POST)
	public String getwaitdeliver(String pageIndex, String shopUuid,
			int pageSize, HttpServletResponse res) {

		PageSet<Order> prodPageSet = productservice.getwaitdeliver(pageSize,
				pageIndex, shopUuid);

		List<Order> productlist = prodPageSet.getList();
		return shopUuid;
	}

}
