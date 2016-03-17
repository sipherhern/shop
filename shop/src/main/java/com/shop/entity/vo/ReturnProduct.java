package com.shop.entity.vo;

import java.util.List;

import com.shop.entity.Category;
import com.shop.entity.Product;
import com.shop.entity.SkuProd;

public class ReturnProduct {

	/**
	 * 三级 商品分类
	 */
	private Category category;

	/**
	 * 所有 的 skutwo 的 价格、库存量
	 */
	private List<SkuProd> skuprods;

	/**
	 * 所有 的 skuone 属性
	 */
	private List<Category> skuones;

	/**
	 * 所有 的 skutwo 属性
	 */
	private List<Category> skutwos;

	private Product product;

	private String shipUuid;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getShipUuid() {
		return shipUuid;
	}

	public void setShipUuid(String shipUuid) {
		this.shipUuid = shipUuid;
	}

	public ReturnProduct() {
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<SkuProd> getSkuprods() {
		return skuprods;
	}

	public void setSkuprods(List<SkuProd> skuprods) {
		this.skuprods = skuprods;
	}

	public List<Category> getSkuones() {
		return skuones;
	}

	public void setSkuones(List<Category> skuones) {
		this.skuones = skuones;
	}

	public List<Category> getSkutwos() {
		return skutwos;
	}

	public void setSkutwos(List<Category> skutwos) {
		this.skutwos = skutwos;
	}

	public ReturnProduct(Category category, List<SkuProd> skuprods,
			List<Category> skuones, List<Category> skutwos, Product product,
			String shipUuid) {
		this.category = category;
		this.skuprods = skuprods;
		this.skuones = skuones;
		this.skutwos = skutwos;
		this.product = product;
		this.shipUuid = shipUuid;
	}



}
