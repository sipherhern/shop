package com.shop.entity;

// Generated 2015-9-29 21:11:50 by Hibernate Tools 4.0.0

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * ShopClass generated by hbm2java
 */
@Entity
@Table(name = "shop_class", catalog = "shop")
public class ShopClass implements java.io.Serializable {

	private Integer shopClassId;
	private Shop shop;
	private ThirdClass thirdClass;

	public ShopClass() {
	}

	public ShopClass(Shop shop, ThirdClass thirdClass) {
		this.shop = shop;
		this.thirdClass = thirdClass;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "shop_class_id", unique = true, nullable = false)
	public Integer getShopClassId() {
		return this.shopClassId;
	}

	public void setShopClassId(Integer shopClassId) {
		this.shopClassId = shopClassId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "shop", nullable = false)
	public Shop getShop() {
		return this.shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "three_class", nullable = false)
	public ThirdClass getThirdClass() {
		return this.thirdClass;
	}

	public void setThirdClass(ThirdClass thirdClass) {
		this.thirdClass = thirdClass;
	}

}