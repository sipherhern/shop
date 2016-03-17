package com.shop.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.shop.entity.Category;
import com.shop.entity.Product;
import com.shop.entity.SkuProd;
import com.shop.entity.vo.ReturnProduct;
import com.shop.service.CategoryService;

@Component
public class CategoryServiceImpl extends BaseServiceImpl<Object> implements
		CategoryService {

	@Override
	public void test(String test) {

		System.out.println(" cateimpl : test = " + test);
	}

	@Override
	public ReturnProduct addcate(List<Category> cates, String shopUuid,
			List<List<String>> lists, List<SkuProd> skuprods, Product product) {

		/*
		 * ReturnProduct returnproduct = new ReturnProduct();
		 *//**
		 * 查找当前店铺
		 */
		/*
		 * String hql = "From Shop s where s.shopUuid = '" + shopUuid + "'";
		 * 
		 * Shop shop = (Shop) this.get(hql);
		 * 
		 * product.setShop(shop);
		 *//**
		 * 查找 当前数据库 中 有没有 此 分类 并 更新
		 */
		/*
		 * for (int i = 0; i < cates.size(); i++) {
		 * System.out.println("find  i = " + i);
		 * 
		 * String hql1 = "From Category c where c.kindName = '" +
		 * cates.get(i).getKindName() + "'";
		 * 
		 * Category cate = (Category) this.get(hql1);
		 * 
		 * if (cate != null) { cates.set(i, cate); } }
		 * 
		 * for (int i = 0; i < cates.size(); i++) {
		 * System.out.println("do  i = " + i);
		 *//**
		 * 设置 商品分类等级
		 */
		/*
		 * cates.get(i).setKindLevel(i + 1); cates.get(i).setKindType("class");
		 * 
		 * if (i != 0) {
		 *//**
		 * 为当前 的 前一级 设置 子分类
		 */
		/*
		 * Set<Category> categories = new HashSet<Category>();
		 * categories.add(cates.get(i)); cates.get(i -
		 * 1).setCategories(categories);
		 *//**
		 * 为自己 设置 父分类
		 */
		/*
		 * cates.get(i).setCategory(cates.get(i - 1)); } }
		 *//**
		 * 保存 商品分类
		 */
		/*
		 * for (int i = 0; i < cates.size(); i++) {
		 * System.out.println("save  i = " + i); this.save(cates.get(i)); }
		 *//**
		 * 商品 一级 分类 与 店铺 关联
		 */
		/*
		 * 
		 * CateRelate caterelate = new CateRelate();
		 * 
		 * caterelate.setCategory(cates.get(0));
		 * caterelate.setCateType("cate1_shop"); caterelate.setShop(shop);
		 * this.save(caterelate);
		 * 
		 * List<Category> skuones = new ArrayList<Category>(); List<Category>
		 * skutwos = new ArrayList<Category>(); for (int i = 0; i <
		 * lists.size(); i++) {
		 *//**
			 * 
			 */
		/*
		 * List<String> list = lists.get(i);
		 * 
		 * if (list != null) {
		 *//**
		 * 设置一级sku 属性
		 */
		/*
		 * Category cate1 = new Category(); cate1.setKindType("sku");
		 * cate1.setKindName(list.get(0)); cate1.setKindLevel(1);
		 *//**
		 * 设置 二级sku 属性
		 */
		/*
		 * 
		 * Set<Category> categories = new HashSet<Category>(); for (int j = 1; j
		 * < list.size(); j++) {
		 * 
		 * Category cate2 = new Category(); cate2.setKindType("sku");
		 * cate2.setKindLevel(2); cate2.setKindName(list.get(j));
		 * 
		 * System.out.println("print  j = " + j);
		 * System.out.println(lists.get(j));
		 *//**
		 * 为 二级sku 属性设置 父分类
		 */
		/*
		 * cate2.setCategory(cate1);
		 *//**
		 * 保存 二级 分类
		 */
		/*
		 * this.save(cate2); categories.add(cate2);
		 *//**
		 * 保存返回 每一个 skutwo
		 */
		/*
		 * skutwos.add(cate2); System.out.println(cate2.getKindName()); }
		 *//**
		 * 为一级sku 属性 设置 所有 二级sku属性子分类
		 */
		/*
		 * cate1.setCategories(categories);
		 *//**
		 * 保存 一级 分类
		 */
		/*
		 * this.save(cate1);
		 * 
		 * skuones.add(cate1); }
		 * 
		 * }
		 * 
		 * System.out.println("end of cate impl");
		 *//**
		 * 返回三级 商品分类
		 */
		/*
		 * Category cateofclass = cates.get(2);
		 * returnproduct.setCategory(cateofclass);
		 *//**
		 * 返回一级 二级sku分类
		 */
		/*
		 * returnproduct.setSkuones(skuones); returnproduct.setSkutwos(skutwos);
		 * returnproduct.setProduct(product);
		 * 
		 * return returnproduct;
		 */
		return null;
	}

	@Override
	public List<Category> findCateByShop(String shopUuid) {

		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SkuProd> findSkuProdBySku(String prodUuid, int kindId) {

		String hql = "from SkuProd sp where sp.product.prodUuid = '" + prodUuid
				+ "' and (sp.categoryBySku2Id1.kindId = '" + kindId
				+ "' or sp.categoryBySku2Id2.kindId = '" + kindId + "')";

		 List<?> skuprod = this.find(hql);
		return (List<SkuProd>)skuprod;
	}

	@Override
	public List<Category> findsku1Bycate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Category> findcateChildren(String kindId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Category> findsku1Bycate(String kindId) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SkuProd> getSkuByProd(String prodUuid) {
		String hql = "from SkuProd sp where sp.product.prodUuid = '" + prodUuid
				+ "'";
		List<?> skuprod = this.find(hql);
		return (List<SkuProd>) skuprod;
	}

}
