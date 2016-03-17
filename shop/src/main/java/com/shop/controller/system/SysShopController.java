package com.shop.controller.system;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.controller.base.RequestContext;
import com.shop.entity.Customer;
import com.shop.entity.Shop;
import com.shop.service.CustomerService;
import com.shop.service.ShopService;

@Component
@RequestMapping(value = "/shopsys/shop")
public class SysShopController extends RequestContext {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private ShopService shopService;
	/**
	 * 商铺用户登录
	 * @throws IOException 
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public void login(@RequestParam("custUname") String custUname,
			@RequestParam("custPwd") String custPwd,
			HttpServletResponse response) throws IOException{
		Customer customer = new Customer();
		customer.setCustUname(custUname);
		customer.setCustPwd(custPwd);
		Customer newcustomer = customerService.login(customer);//判断是否登录成功
		if(newcustomer == null)
			response.sendError(203);//登录失败
		else
		{
			this.persistShop(shopService.SysLoginShop(newcustomer));//持久化Shop	
		}
	}
	

	/**
	 * 商铺用户离开
	 */

	@RequestMapping(value = "logout", method = RequestMethod.POST)
	public void logout(String shopUuid) {
		shopService.SysLogout();
		this.removePersistShop();
		System.gc();
	}

	/**
	 * 更新商铺如下选项（电话，地址，简介，是否停止营业？
	 */
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public void updateShop(@RequestParam("shopName") String shopName,
			@RequestParam("shopTele") String shopTele,
			@RequestParam("shopAddr") String shopAddr,
			@RequestParam("shopInfo") String shopInfo
			) {
		Shop shop = (Shop) this.getPersistShop();
		if(shop == null)
		{
			return ;
		}
		shop.setShopName(shopName);
		shop.setShopAddr(shopAddr);
		shop.setShopTele(shopTele);
		shop.setShopInfo(shopInfo);
		shopService.SysUpdateShop(shop);
	}

	/**
	 * 停止/开启店铺
	 */

	@RequestMapping(value = "enabled", method = RequestMethod.POST)
	public void setShopeEnabled(@RequestParam("enabled") boolean enabled) {
		Shop shop = (Shop) this.getPersistShop();
		shop.setShopEnabled(enabled);
		shopService.SysSetShopeEnabled(shop);
	}
	

}
