package com.shop.entity.vo;

import java.util.List;

import com.shop.entity.Shipping;

public class ShipForm {
	private List<Shipping> shipping;

	public List<Shipping> getShipping() {
		return shipping;
	}

	public void setShipping(List<Shipping> shipping) {
		this.shipping = shipping;
	}

	public ShipForm(List<Shipping> shipping) {
		super();
		this.shipping = shipping;
	}

	public ShipForm() {
		super();
	}

}