package com.shop.service;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.shop.entity.Customer;
import com.shop.entity.Shop;

public interface ShopService{
	
	/** 商城管理员函数方法
	 * @param shopkeeper
	 * @return
	 */
	public Shop SysLoginShop(Customer customer);

	public void SysUpdateShop(Shop shop);

	public void SysLogout();
	
	public void SysSetShopeEnabled(Shop shop);
	
	/** 普通用户函数方法
	 * @param shopkeeper
	 * @return
	 */
	//根据列出所有热门商铺
	public List<Map<String,Object>> UserlistPopularShop();
	//根据关键词进行查询商铺名称
	public List<Map<String,Object>> searchCertainShop(String keywords) throws Exception ;
	//获取某一个商铺的关注状态
	public int getFollowed(int shop_id,int cust_id);
	//关注某一个商铺
	public int followCertainShop(int shop_id,int cust_id);
	//取消关注某一个商铺
	public int cancelFollowCertainShop(int shop_id,int cust_id);
	//获得商铺信息
	public Shop getShopInfo(int shop_id);
	//获取商铺图片信息
	public List<Map<String,Object>> getShopPic(int shop_id);
	//获取商品总数目
	public int getShopNewProdNum(int shop_id);
	//获取商铺总商品数目
	public Number getShopTotalProdNum(int shop_id);
}