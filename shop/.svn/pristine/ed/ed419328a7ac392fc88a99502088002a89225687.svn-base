package com.shop.service.impl;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shop.entity.Category;
import com.shop.entity.Order;
import com.shop.entity.Product;
import com.shop.entity.Shop;
import com.shop.entity.SkuProd;
import com.shop.entity.vo.Constant;
import com.shop.entity.vo.PageSet;
import com.shop.entity.vo.ReturnProduct;
import com.shop.exception.ShopException;
import com.shop.service.ProductService;
import com.shop.service.PromotionService;
import com.shop.util.UUIdutil;

@Component
public class ProductServiceImpl extends BaseServiceImpl<Object> implements
		ProductService {

	@Autowired
	private PromotionService promotionService;

	@Override
	public void test(String test) {
		String hql = "from Product p where p.prodType != 'isclose' order by p.prodDate desc";

		Query query = this.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Product> productlist = (List<Product>) query.list();

		for (int i = 0; i < productlist.size(); i++) {
			System.out.println(productlist.get(i).getProdName());

		}
		System.out
				.println("/*****************************************************************************/");

	}

	@Override
	public void addproduct(ReturnProduct returnproduct) {

		System.out.println(returnproduct);

		Product product = returnproduct.getProduct();
		/**
		 * UUid
		 */
		product.setProdUuid(UUIdutil.uuid());
		product.setProdType("isopen");
		product.setProdCommentNum(0);
		product.setProdDate(new Timestamp(System.currentTimeMillis()));
		product.setProdFoll(0);
		product.setProdSell(0);
		product.setProdTotalscore(0);
		product.setProdShipping(new BigDecimal(0.00));

		product.setProdPrice(new BigDecimal(90.0));

		product.setProdStore(0);

		/**
		 * 设置 运费
		 */
		// product.setShipUuid(returnproduct.getShipUuid());

		System.out.println(product);
		/**
		 * 保存商品
		 */
		this.save(product);

		/**
		 * 保存 三级商品类别 与 商品 关联
		 */
		/*
		 * CateRelate caterelate = new CateRelate();
		 * caterelate.setCategory(returnproduct.getCategory());
		 * caterelate.setProduct(product); caterelate.setCateType("cate3_prod");
		 * 
		 * System.out.println(caterelate); this.save(caterelate);
		 */

		/**
		 * 保存 一级、sku类别 与 商品 关联
		 */

		List<Category> skuones = returnproduct.getSkuones();

		System.out.println(skuones);

		/*
		 * for (int i = 0; i < skuones.size(); i++) { CateRelate cateprod = new
		 * CateRelate(); cateprod.setCategory(skuones.get(i));
		 * cateprod.setProduct(product); cateprod.setCateType("sku1_prod");
		 * this.save(cateprod); }
		 */

		/**
		 * 保存 二级、sku类别 与 商品 关联
		 */
		List<Category> skutwos = returnproduct.getSkutwos();
		List<SkuProd> skuprods = returnproduct.getSkuprods();
		System.out.println("skutwos = " + skutwos);
		System.out.println("skutwos.size() =" + skutwos.size());
		System.out.println("skuprods = " + skuprods);
		System.out.println("skuprods.size() =" + skuprods.size());

		/**
		 * 为 skuprod 设置 skutwo 与 商品
		 */
		for (int i = 0; i < skutwos.size(); i++) {
			skuprods.get(i).setProduct(product);
			skuprods.get(i).setCategoryBySku2Id1(skutwos.get(i));
		}

		/**
		 * 保存 skuprod 即 每个 二级 分类 的 价格 和库存量
		 */
		for (int i = 0; i < skuprods.size(); i++) {
			System.out.println(skuprods.get(i).getProdPrice());
			this.save(skuprods.get(i));
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public PageSet<Product> findByshop(String shopUuid, String pageIndex,
			int pageSize) throws SQLException {

		if (pageSize == 0) {
			pageSize = Constant.DEFAULT_PAGE_SIZE;
		}

		System.out.println("shop");
		/**
		 * 
		 */
		String hq = "From Shop where shopUuid = '" + shopUuid + "'";

		Shop shop = null;
		try {
			shop = (Shop) this.find(hq).get(0);
		} catch (Exception e) {
			throw new ShopException("店铺不存在", e);
		}

		if (shop == null) {
			throw new ShopException("找不到相应店铺", new SQLException());
		}

		System.out.println(shop);

		int shopId = shop.getShopId();

		String hql = "From Product where shop_id = '" + shopId + "'";

		PageSet<?> productpageset = this.findAllRecordAndDivPage(pageSize,
				pageIndex, hql);

		System.out.println(productpageset);

		return (PageSet<Product>) productpageset;
	}

	@Override
	public Product findProductDetail(String prodUuid) {
		String hql = "From Product p where p.prodUuid = '" + prodUuid + "'";
		Product product = (Product) this.get(hql);
		return product;
	}

	@SuppressWarnings("unchecked")
	@Override
	public PageSet<Product> getPopularProduct(int pageSize, String pageIndex) {

		String hql = "from Product p where p.prodType != 'isclose' order by p.prodSell desc";
		PageSet<?> pageset = this.findAllRecordAndDivPage(pageSize, pageIndex,
				hql);

		return (PageSet<Product>) pageset;
	}

	@SuppressWarnings("unchecked")
	@Override
	public PageSet<Product> getNewProduct(int pageSize, String pageIndex) {
		// TODO Auto-generated method stub

		String hql = "from Product p where p.prodType != 'isclose' order by p.prodDate desc";

		PageSet<?> pageset = this.findAllRecordAndDivPage(pageSize, pageIndex,
				hql);

		return (PageSet<Product>) pageset;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getPromotionProduct(int pageSize, String pageIndex) {

		String hql = "from Product p where p.prodType = 'isrecommend' order by p.prodDate desc";

		List<?> productlist = this.findAllRecordAndDivPage(pageSize, pageIndex,
				hql).getList();
		return (List<Product>) productlist;
	}

	/********************************************************************************************************/

	@SuppressWarnings("unchecked")
	@Override
	public PageSet<Order> getwaitdeliver(int pageSize, String pageIndex,
			String shopUuid) {

		String hql = "from Order o left join OrderRelate ore on o.id = ore.order.id where o.orderState = 'paysuccess_waiting' and  order by desc";

		PageSet<?> pageset = this.findAllRecordAndDivPage(pageSize, pageIndex,
				hql);

		return (PageSet<Order>) pageset;
	}

	@Override
	public PageSet<Product> getcheckingProduct(int pageSize, String pageIndex,
			String shopUuid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageSet<Product> getStorageProduct(int pageSize, String pageIndex,
			String shopUuid) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public PageSet<Product> getSellingProduct(int pageSize, String pageIndex,
			String shopUuid) {
		String hql = "from Product p where p.prodType != 'isclose' order by p.prodDate desc";
		PageSet<?> pageset = this.findAllRecordAndDivPage(pageSize, pageIndex,
				hql);

		return (PageSet<Product>) pageset;
	}

	@Override
	public boolean updateproductdetail(Product product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateskuprod(Product product, SkuProd skuprod) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delproduct(Product product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateproductstate(Product product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getFollowed(int prod_id, int cust_id) {
		Map<String, Object> sh = new HashMap<String, Object>();
		sh.put("prodId", prod_id);
		sh.put("custId", cust_id);
		if (this.find(
				"from Collect c inner join c.product p where p.prodId = :prodId and c.custId = :custId",
				sh).isEmpty())
			return 202;
		else
			return 200;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> fuzzyFindProducts(String keywords) {
		
		String hql = "From Product p where p.prodName like '%" + keywords + "%'";
		
		List<?> prodlist = this.find(hql);

		return (List<Product>) prodlist;
	}

	// 要考虑促销是不是过期
	@Transactional(readOnly = false)
	@Override
	public boolean isPromotion(Product product) throws Exception {
		promotionService.updateValidity(product.getPromotion());
		boolean flag = false;
		if (product.getPromotion() == null) {
			flag = false;
			return flag;
		} else if (!product.getPromotion().isPromEnabled()) {
			flag = false;
			return flag;
		} else {
			flag = true;
			return flag;
		}
	}
}
