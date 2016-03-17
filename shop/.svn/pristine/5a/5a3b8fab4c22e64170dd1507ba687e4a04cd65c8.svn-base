package com.shop.service;

import com.shop.entity.Cartitem;
import com.shop.entity.vo.PageSet;

public interface CartService {

	public void test(String test);
	
	/**
	 * 查看我的购物车
	 * @param prodUuid
	 * @param pageIndex 
	 * @param pageSize 
	 * @return
	 */
	public PageSet<Cartitem> lookMyCart(String custUuid, int pageSize, String pageIndex);

	/**
	 * 清空购物车
	 * @param custUuid
	 * @return
	 */
	
	public boolean clearCart(String custUuid);

	/**
	 * 更改商品数目
	 * @param prodUuid
	 * @param cartitemQuantity
	 * @param custUuid 
	 * @return
	 */
	public boolean updateProductNum(String prodUuid, int cartitemQuantity, String custUuid);
	
	/**
	 * 添加至购物车
	 * @param prodUuid
	 * @param prodNum 
	 * @param skuprod_id 
	 * @return
	 */
	public boolean addProduct(String prodUuid, int prodNum, Integer skuprodId);

	/**
	 * 从购物车中移除商品
	 * @param custUuid 
	 * @param custUuid
	 * @return
	 */
	public boolean delproduct(String prodUuid, String custUuid);

}
