package com.shop.service;

import java.util.List;

import com.shop.entity.OrderRelate;
import com.shop.entity.ProdCommt;
import com.shop.entity.Product;
import com.shop.entity.Province;
import com.shop.entity.Shop;

 

public  interface SystemProductService {

 
	
	/**
	 * 商品保存
	 * @param category 
	 * @param typestring 
	 * @param  
	 */
	public Boolean addproductDo(Product product,List<String> imgList,List<String> firstList,List<String> secondList, String typestring, Integer category);
  
	
	/**
	 * 库存
	 * @param  
	 */
	public List<Product> getStorageProduct(Shop shop, int page,Integer category);
	
	
	/**
	 * 删除商品
	 * @param  
	 */
	public Boolean detproduct(Integer shopId, String idArray);


	public Boolean upproductstate(Integer shopId, String idArray);


	public List<Product> getSellingProduct(Shop shop, Integer page);


	public Boolean downproductstate(Integer shopId, String idArray);


	public List<OrderRelate> getSoldProduct(Shop shop, Integer page,Integer category);


	public List<ProdCommt> getShopComment(Shop shop, Integer page,String type);


	public List<Product> getWaitSendProduct(Shop shop, Integer page);


	public String replyComment(Integer comment_id, String replyContent);


	public Integer getStorageProductCount(Shop shop, Integer category);


	public Integer getSellingProductCount(Shop shop);


	public Integer getSoldProductCount(Shop shop, Integer category);


	public Integer getShopCommentCount(Shop shop, String type);


	public Integer getWaitSendProductCount(Shop shop);


	public Product geProductById(Integer shopId,Integer prod_id);


	public Boolean updateProductDo(Product product, List<String> imgList,
			List<String> amountList, List<String> typeIdList);


	public Boolean sendProduct(Integer orderId, String logisticName, String logisticId);


	public List<Province> getAllProvince();


}
