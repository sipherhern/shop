package com.shop.controller.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.shop.entity.Customer;
import com.shop.entity.Shop;

public class RequestContext {
	@Autowired
	private HttpServletRequest request; // 这里可以获取到request
	@Autowired
	private HttpSession session; // 这里可以获取到session
	// 响应线程
	private static String SHOP_CONTEXT;
	private static String CUSTOMER_CONTEXT;

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpSession getSession() {
		return session;
	}

	public void setSession(HttpSession session) {
		this.session = session;
	}

	public void persistShop(Shop shop) {
		SHOP_CONTEXT = shop.getShopUuid();
		System.out.println(this.getSession());
		this.getSession().setAttribute(SHOP_CONTEXT, shop);
		this.getSession().setAttribute("shopName", shop.getShopName());
		this.getSession().setAttribute("shopId", shop.getShopId());
		System.out.println(SHOP_CONTEXT);
	}

	public void persistCustomer(Customer customer) {
		CUSTOMER_CONTEXT = customer.getCustUuid();
		this.getSession().setAttribute(CUSTOMER_CONTEXT, customer);
	}

	public Shop getPersistShop() {
		return (Shop) this.getSession().getAttribute(SHOP_CONTEXT);
	}

	public Customer getPersistCustomer() {
		return (Customer) this.getSession().getAttribute(CUSTOMER_CONTEXT);
	}

	public void removePersistShop() {
		this.getSession().removeAttribute(SHOP_CONTEXT);
	}

	public void removePersistCustomer() {
		this.getSession().removeAttribute(CUSTOMER_CONTEXT);
	}

}