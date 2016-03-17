package com.shop.service;

import com.shop.entity.ProdCommt;
import com.shop.entity.vo.PageSet;


public interface CommentService {

	/**
	 * 添加评论
	 *
	 */
	public boolean addComment(ProdCommt commt , String prodUuid , String custUuid);

	/**
	 * 删除评论
	 *
	 */
	public boolean delComment(String proc_id);

	/**
	 *  回复评论
	 *  回复评论需要获取cust_id和 proc_id 然后把commt_sender设为1
	 */
	public boolean replyComment(String procUuid, String commt_reply);

	/**
	 * 根据商品Uuid浏览所有留言
	 * 
	 * @return
	 * @throws Exception
	 */
	public PageSet<ProdCommt> retrieveMyComment(int pageSize, String custUuid ,String pageIndex) throws Exception;
	
	/**
	 * 根据商品Uuid浏览所有留言
	 * 
	 * @return
	 * @throws Exception
	 */
	public PageSet<ProdCommt> retrieveComment(int pageSize, String prodUuid ,String pageIndex) throws Exception;

	
	/**
	 * 统计留言条数
	 * 
	 * @return
	 * @throws Exception
	 */
	public int countWord() throws Exception;

	/**
	 * 
	 * @param procUuid
	 * @param commtReply
	 * @return
	 */
	public boolean addComplain(String procUuid, String commtReply, String custUuid);

	/**
	 * 
	 * @param procUuid
	 * @param commtReply
	 * @return
	 */
	public boolean addconsult(String procUuid, String commtReply);

	/**
	 * 
	 * @param procUuid
	 * @param commtReply
	 * @return
	 */
	public PageSet<ProdCommt> LookMycomplain(String procUuid, String commtReply);

	/**
	 * 
	 * @param procUuid
	 * @param commtReply
	 * @return
	 */
	public PageSet<ProdCommt> lookMyConsult(String procUuid, String commtReply);

	/**
	 * 
	 * @param pageSize
	 * @param pageIndex
	 * @param shopUuid
	 * @return
	 */
	public PageSet<ProdCommt> getwaitreply(int pageSize, String pageIndex,
			String shopUuid);
}
