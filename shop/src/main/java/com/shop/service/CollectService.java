package com.shop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.shop.entity.Collect;

@Service
public interface CollectService {
	/**
	 * 添加商品至收藏夹
	 * 
	 * @param collection
	 * @return
	 * @throws Exception
	 */

	public int followProduct(Collect collection) throws Exception;

	/**
	 * 从收藏中删除单个商品
	 * 
	 * @param prod_id
	 * @param cust_id
	 * @return
	 * @throws Exception
	 */

	public int unfollowProduct(int prod_id, int cust_id) throws Exception;

	/** 获得商品收藏分页查询结果
	 * 
	 * @param cust_id
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public List getProdCollectPage(int cust_id, int pageIndex, int pageSize)
			throws Exception;

	/** 获得店铺收藏分页查询结果
	 * 
	 * @param cust_id
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public List getShopCollectPage(int cust_id, int pageIndex, int pageSize)
			throws Exception;

}
