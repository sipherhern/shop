package com.shop.service.impl;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.shop.entity.Customer;
import com.shop.entity.ProdCommt;
import com.shop.entity.Product;
import com.shop.entity.vo.Constant;
import com.shop.entity.vo.PageSet;
import com.shop.service.CommentService;
import com.shop.util.UUIdutil;

@Component
public class CommentServiceImpl extends BaseServiceImpl<Object> implements
		CommentService {

	@Override
	public boolean addComment(ProdCommt commt, String prodUuid, String custUuid) {

		/**
		 * 补全参数
		 */
		commt.setCommtDate(new Timestamp(System.currentTimeMillis()));
		commt.setProcUuid(UUIdutil.uuid());
		
		
		/**
		 * 查找 product
		 */
		String hql = "From Product as p where p.prodUuid = :prodUuid";

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("prodUuid", prodUuid);
		Product product = (Product) this.find(hql, map).get(0);
		
		/**
		 * 查找 customer
		 */
		String hql1 = "From Customer as p where p.custUuid = :custUuid";
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("custUuid", custUuid);
		Customer customer = (Customer) this.find(hql1, map1).get(0);
		
		
		/**
		 * 为评论设置参数
		 */
		commt.setCustomer(customer);
		//commt.setProduct(product);
		commt.setProcId(product.getProdId());
		


		if (commt.getCommtType().equals("comment")) {
			
			commt.setIsCustomer(false);
			
			/**
			 * 商品评论数+1
			 */
			
			product.setProdCommentNum(product.getProdCommentNum() + 1);
			product.setProdTotalscore(((product.getProdCommentNum()-1)*product.getProdTotalscore() + commt.getCommtScore())/product.getProdCommentNum());
			this.update(product);


		} else if (commt.getCommtType().equals("question")) {

		} else if (commt.getCommtType().equals("complaint")) {

		}

		
		this.save(commt);

		return true;

	}

	@Override
	public boolean delComment(String proc_id) {

		String hql = "From Product";

		this.find(hql);

		System.out.println("ddd");

		return false;
	}

	@Override
	public int countWord() throws Exception {
		return 0;
	}

	@SuppressWarnings("unchecked")
	@Override
	public PageSet<ProdCommt> retrieveComment(int pageSize ,String prodUuid, String pageIndex)
			throws Exception {
		
		if(pageSize == 0){
			pageSize = Constant.DEFAULT_PAGE_SIZE;
		}
		
		String hql2 = "From Product as p where p.prodUuid = '" + prodUuid + "'";
		
		Product product = (Product) this.find(hql2).get(0);
		
		System.out.println(product.getProdUuid());
		
		int prodId = product.getProdId();
		
		String hql = "From ProdCommt where prod_id = '" + prodId + "'";
		
		PageSet<?> pageSet = this.findAllRecordAndDivPage(pageSize, pageIndex, hql);
		
		System.out.println(pageSet);
		
		return (PageSet<ProdCommt>) pageSet;
	}

	@Override
	public boolean replyComment(String procUuid, String commtReply) {

		String hql = "From ProdCommt where procUuid = '" + procUuid + "'";
		
		ProdCommt commt = (ProdCommt) this.find(hql).get(0);
		
		
		System.out.println(commt.getCommtContent());
		/**
		 * 已经回复
		 */
		commt.setIsCustomer(true);
		commt.setCommtReply(commtReply);
		
		this.update(commt);
		
		return true;
	}

	@SuppressWarnings("unchecked")
	@Override
	public PageSet<ProdCommt> retrieveMyComment(int pageSize, String custUuid,
			String pageIndex) throws Exception {
		if(pageSize == 0){
			pageSize = Constant.DEFAULT_PAGE_SIZE;
		}
		
		String hql2 = "From Customer as p where p.custUuid = '" + custUuid + "'";
		
		Customer customer = (Customer) this.find(hql2).get(0);
		
		int custId = customer.getCustId();

		String hql = "From ProdCommt where cust_id = '" + custId + "'";
		
		PageSet<?> pageSet = this.findAllRecordAndDivPage(pageSize , pageIndex, hql);
		
		return (PageSet<ProdCommt>) pageSet;
	}

	@Override
	public boolean addComplain(String procUuid, String commtReply, String custUuid) {
		
		ProdCommt commt = new ProdCommt();
		
		/**
		 * 补全参数
		 */
		commt.setCommtDate(new Timestamp(System.currentTimeMillis()));
		commt.setProcUuid(UUIdutil.uuid());
		

		
		/**
		 * 查找 customer
		 */
		String hql1 = "From Customer as p where p.custUuid = :custUuid";
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("custUuid", custUuid);
		Customer customer = (Customer) this.find(hql1, map1).get(0);
		
		
		/**
		 * 为评论设置参数
		 */
		commt.setCustomer(customer);
		


		if (commt.getCommtType().equals("comment")) {
			
			commt.setIsCustomer(false);
			
		} else if (commt.getCommtType().equals("question")) {

		} else if (commt.getCommtType().equals("complaint")) {

		}

		
		this.save(commt);

		return true;

	}

	@Override
	public boolean addconsult(String procUuid, String commtReply) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public PageSet<ProdCommt> LookMycomplain(String procUuid, String commtReply) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageSet<ProdCommt> lookMyConsult(String procUuid, String commtReply) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
	@Override
	public PageSet<ProdCommt> getwaitreply(int pageSize, String pageIndex,
			String shopUuid) {
		// TODO Auto-generated method stub
		return null;
	}

}
