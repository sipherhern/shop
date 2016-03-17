<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="layout.tld" prefix="e"%>

<e:override name="title">股东汇 | 管理平台</e:override>


<e:override name="content_right">
	<ul class="breadcrumb">
		<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
			class="icon-angle-right"></i></li>
		<li><a href="#">Logis</a></li>
	</ul>

	<div class="row-fluid">
		<div class="box span12">
			<div class="box-content">

				<div id="refund-list-help">
					<div class="refund-list-help-bd" id="J_RefundHelpBox">

						<!--<div class="help-box">
                            <p>为方便您的退货管理，请到卖家<a target="_blank" href="//wuliu.taobao.com/user/logis_tools.htm?tab_source=contactSetting">发货管理</a>中设置您的默认退货地址。</p>
                        </div>
						<ul>
							<li><a href="//service.taobao.com/support/help-3313.htm" target="_blank">支付宝如何退款？几天可以拿回退款的钱？</a></li>
							<li><a href="//service.taobao.com/support/help-1419.htm" target="_blank">我申请退款，对方一直不同意退款申请，我该怎么办？</a></li>
							<li><a href="//service.taobao.com/support/help-1486.htm" target="_blank">我已经付钱了，但是一直没有收到宝贝，我该怎么办？</a></li>
							<li><a href="//service.taobao.com/support/help-1416.htm" target="_blank">退款过程中出现问题怎么办？</a></li>
						</ul>-->
						<!-- askForTime      = 0  //申请时间，用于按照申请时间进行排序
  						 monthFrom       = 11 //三个月以前 开始月份
 						 monthTo         =    //近三个月 结束月份
  						 orderId         =    //订单编号
   						 outTime         = 0  //超时时间 ， 用于按照超时时间进行排序
  						 pageNum         = 1  //页码
  						 payStatus       = ALL //垫付状态
  						 refundApplyTime = 1 // 退款申请时间
  						 refundId        =   //退款编号
  						 refundStatus    = ALL //退款状态
  						 timeBegin       = 2010-11-01 //三个月之前 开始月份
 						 timeEnd         = 2011-02-01 //三个月之前 结束月份
 						 userRole        = buyer //用户角色
 						 yearTo          = 2010  //三个月之前 到第几年份-->

						<!--卢石start-->
						<form action="//refund.taobao.com/refund_list.htm" method="post"
							id="refundListQueryForm">
							<input value="0" id="totalPage" name="totalPage" type="hidden">
							<input name="from" id="from" value="" type="hidden"> <input
								name="pageNum" id="pageNum" value="1" type="hidden"> <input
								name="userRole" id="userRole" value="seller" type="hidden">
							<input name="orderId" id="orderId" type="hidden"> <input
								name="refundApplyTime" id="refundApplyTime" value=""
								type="hidden"> <input name="yearTo" id="yearTo" value=""
								type="hidden"> <input name="monthFrom" id="monthFrom"
								value="" type="hidden"> <input name="monthTo"
								id="monthTo" value="" type="hidden"> <input
								name="refundId" id="refundId" type="hidden"> <input
								name="refundStatus" id="refundStatus" value="" type="hidden">
							<input name="csStatus" id="interveneStatus" value=""
								type="hidden"> <input name="payStatus" id="payStatus"
								value="" type="hidden"> <input name="askForTime"
								id="askForTime" value="" type="hidden"> <input
								name="outTime" id="outTime" value="" type="hidden"> <input
								name="timeBegin" id="timeBegin" value="" type="hidden">
							<input name="timeEnd" id="timeEnd" value="" type="hidden">
							<input id="checkExportUrl"
								value="//refund.taobao.com/export_tfs_suc.htm" type="hidden">
							<input id="onlineRefund"
								value="//refund.taobao.com/refund_list.htm?refundBanner=1"
								type="hidden"> <input id="archiveRefund"
								value="//tradearchive.taobao.com/refund/refund_list.htm"
								type="hidden">
						</form>
						<div class="msg msg-size">
							<p class="attention">
								为方便您的退货管理，请到卖家<a
									href="//wuliu.taobao.com/user/logis_tools.htm?tab_source=contactSetting"
									target="_blank">发货管理</a>中设置您的默认退货地址。
							</p>
						</div>

						<div class="refund-search">
							<table>
								<tbody>
									<tr>
										<td><label>订单编号 :</label> <input id="order_id" value=""
											type="text"></td>
										<td><label>退款申请时间 :</label> <select
											id="refund-apply-date" class="refund-apply-time"
											name="refundApplyTime">
												<option value="0">近三个月</option>
												<option value="1">三个月以前</option>
										</select></td>
										<td><select id="year" class="hidden year-sel-box"><option
													value="2015">2015年</option>
												<option value="2014">2014年</option>
												<option value="2013">2013年</option>
												<option value="2012">2012年</option>
												<option value="2011">2011年</option>
												<option value="2010">2010年</option>
												<option value="2009">2009年</option>
												<option value="2008">2008年</option>
												<option value="2007">2007年</option></select> <label>从 :</label> <input
											value="" name="_fmt.q._0.bi" id="bizOrderTimeBegin" size="10"
											class="begin-time" type="text"> <select
											id="month-from" class="hidden month-sel-box">
										</select></td>
										<td><label>到 :</label> <input value=""
											name="_fmt.q._0.bizo" id="bizOrderTimeEnd" size="10"
											class="end-time" type="text"> <select id="month-to"
											class="hidden month-sel-box">
										</select></td>
									</tr>
									<tr>
										<td><label>退款编号 :</label> <input id="refund_id" value=""
											type="text"></td>
										<td>
											<div class="J_DisplayLayer">
												<label>退款状态 :</label> <select name="refundStatus"
													id="J_RefundStatus">
													<option value="all">全部</option>
													<option value="STATUS_WAIT_SELLER_AGREE">退款申请等待卖家确认中</option>
													<option value="STATUS_SELLER_REFUSE_BUYER">卖家不同意协议,等待买家修改</option>
													<option value="STATUS_WAIT_BUYER_RETURN_GOODS">退款申请达成,等待买家发货</option>
													<option value="STATUS_WAIT_SELLER_CONFIRM_GOODS">买家已退货,等待卖家确认收货</option>
													<option value="STATUS_CLOSED">退款关闭</option>
													<option value="STATUS_SUCCESS">退款成功</option>
												</select>
											</div>
										</td>
										<td colspan="2">
											<div class="J_DisplayLayer">
												<label>垫付状态 :</label> <select name="payStatus"
													id="J_PayStatus" class="pay-status">
													<option value="all">全部</option>
													<option value="ADVANCED_ING">客服已介入,先行垫付进行中</option>
													<option value="ADVANCED_WAIT_BUYER_RETURN_GOODS">垫付完成,等待买家退货</option>
													<option value="ADVANCED_WAIT_SELLER_RECEIVE_RETURNEDGOODS">垫付完成,等待卖家确认收货</option>
													<option value="ADVANCED_WAIT_SELLER_CONFIRM_DELIVERY">垫付完成,买家未收到货,等待卖家确认</option>
													<option value="ADVANCED_SELLER_REFUSE_REFUND">垫付完成,卖家拒绝退款</option>
													<option value="ADVANCED_SUCCESS">退款成功,垫付成功</option>
													<option value="ADVANCED_CLOSED">退款关闭,垫付成功</option>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="J_DisplayLayer">
												<label>淘宝处理状态:</label> <select name="csStatus"
													id="J_Intervene">processed
													<option value="all">全部</option>
													<option value="NOT_INTERVENE">淘宝未介入</option>
													<option value="PROOF_ING">举证中</option>
													<option value="PROCESS_ING">淘宝处理中</option>
													<option value="RIGHTS_CANCLE">维权撤销</option>
													<option value="SUPPORT_BUYER">支持买家</option>
													<option value="SUPPORT_SELLER">支持卖家</option>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td class="search-export" colspan="3"><span
											class="skin-gray">
												<button class="small-btn J_MakePoint" id="J_SearchOrders">搜索</button>
												<button class="small-long-btn J_DisplayLayer"
													id="J_BatchExportBtn">批量导出</button>
										</span></td>
									</tr>
								</tbody>
							</table>
							<div id="J_TipAndFeedbackForDateSelect" class="msg"></div>
							<div class="msg24 msg-pos hidden" id="msg-tips">
								<p class="tips export-load-tips">
									为了保证您的查询性能, 两次导出的时间间隔请保持在5分钟以上 <a title="关闭" href="#"
										class="close-btn J_BatchExportPanelCloseBtn" value="msg-tips">关闭</a>
									<button type="button" id="J_MakeExportBtn" class="export-btn"
										data-export-url="//refund.taobao.com/build_report.htm">生成报表</button>
									<button type="button" id="J_LoadExportBtn"
										class="export-btn hidden"
										data-export-url="//refund.taobao.com/export_refund.do">下载报表</button>
								</p>
							</div>
							<div class="msg24 msg-pos hidden" id="load-tips">
								<p class="tips export-load-tips">
									为了保证您的查询性能, 两次导出的时间间隔请保持在<span style="color: #FF0000">5</span>分钟以上.稍后尝试.
									<a title="关闭" href="#"
										class="close-btn J_BatchExportPanelCloseBtn" value="load-tips">关闭</a>
								</p>
							</div>
							<div class="msg24 msg-pos hidden" id="loading-now">
								<p class="tips export-load-tips">
									为了保证您的查询性能, 两次导出的时间间隔请保持在,正在下载报表. <a title="关闭" href="#"
										class="close-btn J_BatchExportPanelCloseBtn"
										value="loading-now">关闭</a>
								</p>
								<div class="loading-pic"></div>
								<p></p>
							</div>
							<div class="msg24 msg-pos hidden" id="making-now">
								<p class="tips export-load-tips">
									为了保证您的查询性能, 两次导出的时间间隔请保持在<span style="color: #FF0000">5</span>分钟以上,正在下载报表.
									<a title="关闭" href="#"
										class="close-btn J_BatchExportPanelCloseBtn"
										value="making-now">关闭</a>
								</p>
								<div class="loading-pic"></div>
								<p></p>
							</div>

							<div class="msg24 msg-pos hidden" id="load-success">
								<p class="tips export-load-tips">
									成功下载报表 <a title="关闭" href="#"
										class="close-btn J_BatchExportPanelCloseBtn"
										value="load-success">关闭</a>
								</p>
							</div>
							<div class="msg24 msg-pos hidden" id="load-failure">
								<p class="tips export-load-tips" id="failTips">
									下载报表失败,请稍候再试. <a title="关闭" href="#"
										class="close-btn J_BatchExportPanelCloseBtn"
										value="load-failure">关闭</a>
								</p>
							</div>

						</div>
						<!--卢石end-->
						<div class="hack"></div>
					</div>
					<div class="panel-toggle">
						<a class="tool-toggle" href="#" hidefocus="true"
							id="J_RefundHelpBoxToggle"><span class="athidden">收起/展开</span></a>
					</div>
				</div>

			</div>
		</div>
	</div>
</e:override>

<%@include file="/merchant/main.jsp"%>