package com.shop.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;


import com.shop.entity.Category;
import com.shop.entity.Order;
import com.shop.entity.OrderRelate;
import com.shop.entity.PictureRelate;
import com.shop.entity.Pictures;
import com.shop.entity.ProdCommt;
import com.shop.entity.Product;
import com.shop.entity.Province;
import com.shop.entity.Shop;
import com.shop.entity.SkuProd;
import com.shop.service.SystemProductService;

@Component
public class SystemProductServiceImpl extends BaseServiceImpl<Object> implements
		SystemProductService {
 
	
	
	/////////////////////////////////////////////////pc//////////////////////////
	@Override
	public Boolean addproductDo(Product product,List<String> imgList,List<String> firstList,List<String> amountList, String typestring, Integer categoryInt){
    	product.setProdUuid(UUID.randomUUID().toString().replace("-", ""));
    	Integer proId=this.save2(product);
    	Product product2 = new Product();
    	product2.setProdId(proId);
    	for(String img:imgList){
    		Pictures picture = new Pictures();
    		picture.setPicUuid(UUID.randomUUID().toString().replace("-", ""));
    		picture.setPicUrl(img);
    		picture.setPicName("");
    		picture.setPicType("product");
    		Integer imgId=this.save2(picture);
    		PictureRelate pictureRelate = new PictureRelate();
    		Pictures picture2 =new Pictures();
    		picture2.setPicId(imgId);
    		pictureRelate.setProduct(product2);
    		pictureRelate.setPictures(picture2);
    		pictureRelate.setPicId(imgId);
    		this.save(pictureRelate);
    	}
    	
    	//一层sku
    	System.out.println("size:"+firstList.size());
    	if(categoryInt.equals(1)){
        		String first=firstList.get(0);
        		if(first!=null&&!first.equals("")){
        		Category category = new  Category();
        		category.setKindLevel(1);
        		category.setKindName(first);
        		Integer categoryId=this.save2(category);
        		String[] secondArray=typestring.split("%");
        	    	for(int j = 0;j<secondArray.length;j++){
        	    		Category category2 = new  Category();
        	    		category2.setKindLevel(2);
        	    		category2.setKindName(secondArray[j]);
        	    		Category category3 = new  Category();
        	    		category3.setKindId(categoryId);
        	    		category2.setCategory(category3);
        	    		Integer categoryId2=this.save2(category2);	
        	    		Category c = new  Category();
        	    		c.setKindId(categoryId2);
        	    		c.setKindLevel(1);
        		  		SkuProd skuProd = new SkuProd();
          		  		skuProd.setProdStore(Integer.parseInt(amountList.get(j)));
        				skuProd.setCategoryBySku2Id1(c);
        				skuProd.setProduct(product2);
        				this.save(skuProd);	
        	    	}
        	    }
    	}
    	
    	//二层sku
    	else if(categoryInt.equals(2)){
        	Category category_1=null;
        	Category category_2=null;
        		String first1=firstList.get(0);
        		if(first1!=null&&!first1.equals("")){
        		Category category = new  Category();
        		category.setKindLevel(1);
        		category.setKindName(first1);
        		Integer categoryId1=this.save2(category);
  	    		category_1 = new  Category();
  	    		category_1.setKindId(categoryId1);
        		}
        		String first2=firstList.get(1);
        		if(first1!=null){
        		Category category = new  Category();
        		category.setKindLevel(1);
        		category.setKindName(first2);
        		Integer categoryId2=this.save2(category);
        		category_2 = new  Category();
        		category_2.setKindId(categoryId2);
        		}       		
        		Map<String,Category> map1= new HashMap<String,Category>();
        		Map<String,Category> map2= new HashMap<String,Category>();
        		
        		String[] secondArray=typestring.split("%");
        	    	for(int j = 0;j<secondArray.length;j++){
        	    		String[] secondArray_2=secondArray[j].split("@");
        	    		Category category2 = new  Category();
                        if(!map1.containsKey(secondArray_2[0])){       	    		
        	    		category2.setKindLevel(2);
        	    		category2.setKindName(secondArray_2[0]);
        	    		category2.setCategory(category_1);
        	    		Integer categoryId2_1=this.save2(category2);
        	    		category2.setKindId(categoryId2_1);
        	    		map1.put(secondArray_2[0], category2);
                        }
                        else{
                        	category2=map1.get(secondArray_2[0]);
                        }
        	    		
        	    		Category category3 = new  Category();
        	    		if(!map2.containsKey(secondArray_2[1])){       	   
        	    		category3.setKindLevel(2);
        	    		category3.setKindName(secondArray_2[1]);
        	    		category3.setCategory(category_2);
        	    		Integer categoryId2_2=this.save2(category3);	        	    		
        	    		category3.setKindId(categoryId2_2);
        	    		map2.put(secondArray_2[1], category3);
                        }
                        else{
                        	category3=map2.get(secondArray_2[1]);
                        }
        	    		
        	    		
        		  		SkuProd skuProd = new SkuProd();
        		  		skuProd.setProdStore(Integer.parseInt(amountList.get(j)));
        				skuProd.setCategoryBySku2Id1(category2);
        				skuProd.setCategoryBySku2Id2(category3);
        				skuProd.setProduct(product2);
        				this.save(skuProd);	
        	    		
        	            }
        	    	}
        
		return null;
    	
    }
    
	
	
	
	@Override
	public Boolean updateProductDo(Product product, List<String> imgList,
			List<String> amountList, List<String> typeIdList) {
		// TODO Auto-generated method stub
		
		Product productOld=this.geProductById(product.getShop().getShopId(), product.getProdId());
		productOld.setThirdClass(product.getThirdClass());
		productOld.setProdCode(product.getProdCode());
		productOld.setProdName(product.getProdName());
		productOld.setProdDate(product.getProdDate());
		productOld.setProdDesc(product.getProdDesc());
		productOld.setProdPrice(product.getProdPrice());
		productOld.setProdStore(product.getProdStore());
		productOld.setProdWeight(product.getProdWeight());
		
		for(PictureRelate pr:productOld.getPictureRelates()){
			this.delete(pr);
		}
    	this.update(productOld);
    	Product product2 = new Product();
    	product2.setProdId(product.getProdId());
    	for(String img:imgList){
    		Pictures picture = new Pictures();
    		picture.setPicUuid(UUID.randomUUID().toString().replace("-", ""));
    		picture.setPicUrl(img);
    		picture.setPicName("");
    		picture.setPicType("product");
    		Integer imgId=this.save2(picture);
    		PictureRelate pictureRelate = new PictureRelate();
    		Pictures picture2 =new Pictures();
    		picture2.setPicId(imgId);
    		pictureRelate.setProduct(product2);
    		pictureRelate.setPictures(picture2);
    		pictureRelate.setPicId(imgId);
    		this.save(pictureRelate);
    	}
    	int i = 0;
		for(String typeId:typeIdList){
			 SkuProd skuprod=(SkuProd) this.getCurrentSession().get(SkuProd.class, Integer.parseInt(typeId));
			 skuprod.setProdStore(Integer.parseInt(amountList.get(i)));
			 i++;
			 this.update(skuprod);
		}
		return null;
	}
	
	
	
	
	
	
	@Override
	public List<Product> getStorageProduct(Shop shop, int page,Integer category) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shop", shop);
		map.put("prodType", "isclose");
		String hql2="";
		if(category==1){
			map.put("prodStore", 0);	
		}
		else if(category==2){
			hql2=" and prodStore<>0 ";	
		}
		return this.getListHaveParameterAndPage(Product.class, map, hql2 , 0, (page-1)*10);
	}
	
	
	@Override
	public Integer getStorageProductCount(Shop shop,Integer category) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shop", shop);
		map.put("prodType", "isclose");
		String hql2="";
		if(category==1){
			map.put("prodStore", 0);	
		}
		else if(category==2){
			hql2=" and prodStore<>0 ";	
		}
		return this.getEntityCountHaveParam(new Product(), map, hql2);
	}
	
	

	@Override
	public Boolean detproduct(Integer shopId, String idArray) {
		// TODO Auto-generated method stub
		this.getCurrentSession().createSQLQuery("update product set prod_type='isdelete'  where  shop_id=:id and prod_id in("+idArray+")").setInteger("id", shopId).executeUpdate();
		return null;
	}

	@Override
	public Boolean upproductstate(Integer shopId, String idArray) {
		// TODO Auto-generated method stub
		this.getCurrentSession().createSQLQuery("update product set prod_type='isopen'  where  shop_id=:id and prod_id in("+idArray+")").setInteger("id", shopId).executeUpdate();
		return null;
	}

	@Override
	public List<Product> getSellingProduct(Shop shop, Integer page) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shop", shop);
		map.put("prodType", "isopen");
		return this.getListHaveParameterAndPage(Product.class, map, "", 0, (page-1)*10);
	}
	
	@Override
	public Integer getSellingProductCount(Shop shop) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shop", shop);
		map.put("prodType", "isopen");
		return this.getEntityCountHaveParam(new Product(), map);
	}
	

	@Override
	public Boolean downproductstate(Integer shopId, String idArray) {
		// TODO Auto-generated method stub
		this.getCurrentSession().createSQLQuery("update product set prod_type='isclose'  where  shop_id=:id and prod_id in("+idArray+")").setInteger("id", shopId).executeUpdate();
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderRelate> getSoldProduct(Shop shop, Integer page ,Integer category) {
		// TODO Auto-generated method stub
		String sql="";
		List<Integer> idList=null;
		if(category==0){
			sql="select order_r.id from order_relate order_r LEFT JOIN sku_prod s_p on s_p.skuprod_id=order_r.skuprod_id LEFT JOIN product p on p.prod_id=s_p.prod_id where p.shop_id=:shopId";
			idList=this.getCurrentSession().createSQLQuery(sql).setInteger("shopId", shop.getShopId())
					.setFirstResult((page-1)*10).setMaxResults(10).list();
		}else{
			sql="select order_r.id from order_relate order_r LEFT JOIN sku_prod s_p on s_p.skuprod_id=order_r.skuprod_id LEFT JOIN product p on p.prod_id=s_p.prod_id LEFT JOIN" +
					" `order`  as myorder on order_r.order_id=myorder.id where p.shop_id=:shopId and order_state=:state";
		    String state="";
			if(category==1)
		    	 state="paying";
		    else if(category==2)
		    	 state="paysuccess_waiting";
		    else if(category==3)
		    	 state="delivering";
		    else if(category==4)
		    	 state="wait_commt";
		    else if(category==5)
		    	 state="success";
			idList=this.getCurrentSession().createSQLQuery(sql).setInteger("shopId", shop.getShopId()).setString("state", state)
					.setFirstResult((page-1)*10).setMaxResults(10).list();
		}
		if(idList==null||idList.size()==0){
			return null;
		}
		Criteria criteria=this.getCurrentSession().createCriteria(OrderRelate.class);   
		criteria.add(Restrictions.in("id", idList)); 
		return  criteria.list();  
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public Integer getSoldProductCount(Shop shop ,Integer category) {
		// TODO Auto-generated method stub
		String sql="";
		List<Integer> idList=null;
		if(category==0){
			sql="select order_r.id from order_relate order_r LEFT JOIN sku_prod s_p on s_p.skuprod_id=order_r.skuprod_id LEFT JOIN product p on p.prod_id=s_p.prod_id where p.shop_id=:shopId";
			return this.getCurrentSession().createSQLQuery(sql).setInteger("shopId", shop.getShopId()).list().size();
		}else{
			sql="select order_r.id from order_relate order_r LEFT JOIN sku_prod s_p on s_p.skuprod_id=order_r.skuprod_id LEFT JOIN product p on p.prod_id=s_p.prod_id LEFT JOIN" +
					" `order`  as myorder on order_r.order_id=myorder.id where p.shop_id=:shopId and order_state=:state";
		    String state="";
			if(category==1)
		    	 state="paying";
		    else if(category==2)
		    	 state="paysuccess_waiting";
		    else if(category==3)
		    	 state="delivering";
		    else if(category==4)
		    	 state="wait_commt";
		    else if(category==5)
		    	 state="success";
			return this.getCurrentSession().createSQLQuery(sql).setInteger("shopId", shop.getShopId()).setString("state", state).list().size();
		}
	}
	
	
	
	
	
	
	@Override
	public List<ProdCommt> getShopComment(Shop shop, Integer page,String type) {
		// TODO Auto-generated method stub
		String sql="select prod_commt.proc_id from prod_commt  LEFT JOIN product p on prod_commt.prod_id=p.prod_id where p.shop_id=:shopId and prod_commt.commt_type='"+type+"' order by commt_date desc";
		List<Integer> idList=this.getCurrentSession().createSQLQuery(sql).setInteger("shopId", shop.getShopId()).setFirstResult((page-1)*10).setMaxResults(10).list();
		if(idList==null||idList.size()==0)
			return null;
		Criteria criteria=this.getCurrentSession().createCriteria(ProdCommt.class);   
		criteria.add(Restrictions.in("procId", idList)); 
		return  criteria.list(); 
	}
	
	
	
	@Override
	public Integer getShopCommentCount(Shop shop,String type) {
		// TODO Auto-generated method stub
		String sql="select prod_commt.proc_id from prod_commt  LEFT JOIN product p on prod_commt.prod_id=p.prod_id where p.shop_id=:shopId and prod_commt.commt_type='"+type+"' order by commt_date desc";
		return this.getCurrentSession().createSQLQuery(sql).setInteger("shopId", shop.getShopId()).list().size();
	}
	
	
	

	@Override
	public List<Product> getWaitSendProduct(Shop shop, Integer page) {
		// TODO Auto-generated method stub
		String sql="select order_r.id from order_relate order_r LEFT JOIN sku_prod s_p on s_p.skuprod_id=order_r.skuprod_id LEFT JOIN product p on p.prod_id=s_p.prod_id left join `order` on  order_id=order_r.order_id where p.shop_id=:shopId and order_state='paysuccess_waiting'";
		List<Integer> idList=this.getCurrentSession().createSQLQuery(sql).setInteger("shopId", shop.getShopId())
				.setFirstResult((page-1)*10).setMaxResults(10).list();
	    if(idList==null||idList.size()==0)
	    	 return null;
		Criteria criteria=this.getCurrentSession().createCriteria(OrderRelate.class);   
		criteria.add(Restrictions.in("id", idList)); 
		return  criteria.list(); 
	}

	
	@Override
	public Integer getWaitSendProductCount(Shop shop) {
		// TODO Auto-generated method stub
		String sql="select order_r.id from order_relate order_r LEFT JOIN sku_prod s_p on s_p.skuprod_id=order_r.skuprod_id LEFT JOIN product p on p.prod_id=s_p.prod_id left join `order` on  order_id=order_r.order_id where p.shop_id=:shopId and order_state='paysuccess_waiting'";
		return this.getCurrentSession().createSQLQuery(sql).setInteger("shopId", shop.getShopId()).list().size();
	}
	
	
	
	
	
	@Override
	public String replyComment(Integer comment_id, String replyContent) {
		// TODO Auto-generated method stub
		ProdCommt comment=(ProdCommt) this.getCurrentSession().get(ProdCommt.class,comment_id);
		comment.setCommtReply(replyContent);
		String type=comment.getCommtType();
		this.update(comment);
		return type;
	}
	
	
	
	
	@Override
	public Product geProductById(Integer shopId,Integer prod_id) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>();
		Shop shop = new Shop();
		shop.setShopId(shopId);
		map.put("shop", shop);
		map.put("prodId", prod_id);
		List<Product> list=this.getListHaveParameter(Product.class, map, "");
		if(list.size()>0)
			return list.get(0);
		else 
			return null;
	}

	@Override
	public Boolean sendProduct(Integer orderId,String logisticName,String logisticId) {
		// TODO Auto-generated method stub
		Order order=(Order) this.getCurrentSession().get(Order.class,orderId);
		order.setLogisticId(Integer.parseInt(logisticId));
		order.setOrderState("delivering");
		this.update(order);
		return null;
	}
	

	@Override
	public List<Province> getAllProvince() {
		// TODO Auto-generated method stub
		return this.getList(Province.class);
	}
	
	
}
