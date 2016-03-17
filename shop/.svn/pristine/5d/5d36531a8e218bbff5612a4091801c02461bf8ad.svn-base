package com.shop.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shop.entity.Cartitem;
import com.shop.entity.Customer;
import com.shop.entity.SkuProd;
import com.shop.entity.vo.PageSet;
import com.shop.service.CartService;
import com.shop.util.UUIdutil;

@Component
public class CartServiceImpl extends BaseServiceImpl<Object> implements
		CartService {

	@Override
	public void test(String test) {
		// TODO Auto-generated method stub
	}

	@SuppressWarnings("unchecked")
	@Override
	public PageSet<Cartitem> lookMyCart(String custUuid, int pageSize,
			String pageIndex) {

		String hql = "From Cartitem cm where cm.customer.custUuid = '"
				+ custUuid + "'";

		PageSet<?> cart = this
				.findAllRecordAndDivPage(pageSize, pageIndex, hql);

		return (PageSet<Cartitem>) cart;
	}

	@Override
	@Transactional
	public boolean clearCart(String custUuid) {

		String custhql = "from Customer c where c.custUuid = '" + custUuid
				+ "'";

		Customer customer = (Customer) this.get(custhql);

		int cust_id = customer.getCustId();

		String hql = "delete from Cartitem cm where cm.customer.id ='"
				+ cust_id + "'";

		this.executeHql(hql);

		System.out.println("dd");
		return true;
	}

	@Override
	public boolean updateProductNum(String prodUuid, int cartitemQuantity,
			String custUuid) {

		String hql = "From Cartitem cm where cm.customer.custUuid = '"
				+ custUuid + "' and cm.skuProd.product.prodUuid = '" + prodUuid + "'";

		Cartitem cartitem = (Cartitem) this.get(hql);

		cartitem.setCartitemQuantity(cartitemQuantity);

		this.save(cartitem);

		return true;
	}

	@Override
	public boolean delproduct(String prodUuid, String custUuid) {

		String hql = "from Cartitem c where c.customer.custUuid = '" + custUuid
				+ "' and c.skuProd.product.prodUuid = '" + prodUuid + "'";

		Cartitem cartitem = (Cartitem) this.get(hql);

		this.delete(cartitem);
		return true;
	}

	@Override
	@Transactional
	public boolean addProduct(String custUuid, int prodNum,  Integer skuprodId) {

		String hq = "from Cartitem c where c.customer.custUuid = '" + custUuid
				+ "' and c.skuProd.skuprodId = '" + skuprodId + "'";
		/**
		 * 查询 该商品 存不存在
		 */
		Cartitem cartitem1 = (Cartitem) this.get(hq);

		if (cartitem1 == null) {

			String hql = "from Customer c where c.custUuid = '" + custUuid
					+ "'";

			Customer customer = (Customer) this.get(hql);

			/**
			 * 
			 */
			String hql1 = "from SkuProd sp where sp.skuprodId = '"
					+ skuprodId + "'";

			SkuProd skuprod = (SkuProd) this.get(hql1);

			Cartitem cartitem = new Cartitem();
			cartitem.setCustomer(customer);

			
			cartitem.setSkuProd(skuprod);

			cartitem.setCartitemQuantity(prodNum);
			cartitem.setCartitemUuid(UUIdutil.uuid());
			cartitem.setCartitemDate(new Date(System.currentTimeMillis()));
			this.save(cartitem);
		} else {

			cartitem1.setCartitemQuantity(cartitem1.getCartitemQuantity()
					+ prodNum);
			this.update(cartitem1);
		}
		return true;
	}

}
