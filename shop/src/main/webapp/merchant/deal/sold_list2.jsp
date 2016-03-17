<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="layout.tld" prefix="e"%>

<e:override name="title">股东汇 | 管理平台</e:override>


<e:override name="content_right">


	<ul class="breadcrumb">
		<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
			class="icon-angle-right"></i></li>
		<li><a href="#">Publish</a></li>
	</ul>

	<div class="row-fluid">
		<div class="box span12">
			<div class="box-content">
				<ul class="nav nav-pills nav-justified">
					<li class="#"><a href="#"><span>所有商品&nbsp;</span> <i
							class="#">|</i></a></li>
					<li><a href="#"><span>出售中&nbsp;</span><span
							class="label label-important">1</span> <i class="#">|</i></a></li>
					<li class="#"><a href="#"><span>审核中&nbsp;</span> <em>0</em><i
							class="#">|</i></a></li>
					<li class="#"><a href="#"><span>审核失败&nbsp;</span> <span
							class="label label-important">1</span><i class="#">|</i></a></li>
				</ul>
				<hr>
				<form class="form-horizontal"
					action='<c:url value="/merchant/logis/order_list.jsp"/>'
					method="get">
					<fieldset>

						<div class="span4">
							<div class="control-group">
								<label class="control-label" for="typeahead">宝贝名称</label>
								<div class="controls">
									<input type="text">

								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="typeahead">订单编号 </label>
								<div class="controls">
									<input type="text">

								</div>
							</div>
						</div>
						<div class="span4">

							<div class="control-group">
								<label class="control-label" for="typeahead">买家昵称 </label>
								<div class="controls">
									<input type="text">

								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="typeahead">订单类型 </label>
								<div class="controls">
									<select name="orderType" class="span10">
										<option value="-1">全部</option>
										<option value="2">虚拟商品</option>
										<option value="1">其他</option>
									</select>
								</div>
							</div>
						</div>
						<div class="span4">
							<div class="control-group">
								<label class="control-label" for="typeahead">物流服务 </label>
								<div class="controls">
									<select name="logisService" class="span10">
										<option value="-1">全部</option>
										<option value="2">线上付款</option>
										<option value="1">货到付款</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="btn btn-default">搜索</button>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
				<hr>

				<div class="span12">

					<div class="box-content">
						<div class="searchbar">
							<form action="" method="post" class="form-horizontal">
								<div class="form-group">
									<label class="control-label"></label> <input type="text"
										class="form-control" placeholder="输入商品标题或订单号进行搜索">
									<button type="submit" class="btn btn-default">订单搜索</button>
									<label for="consume-tip" class="control-label"><a
										class="other" target="_blank" href="">少货，如何是好？</a></label>
								</div>
							</form>

						</div>
						<hr>
						<p>没有找到符合条件的宝贝！</p>
						<hr>
						<div class="bought-list">
							<form action="" method="post">
								<table
									class="table table-striped table-bordered bootstrap-datatable datatable">
									<colgroup>
										<col class="baobei">
										<col class="price">
										<col class="quantity">
										<col class="item-operate">
										<col class="amount">
										<col class="trade-status">
										<col class="trade-operate">
									</colgroup>
									<thead>
										<tr class="col-name">
											<th class="baobei">宝贝</th>
											<th class="price">单价(元)</th>
											<th class="quantity">数量</th>
											<th class="item-operate">商品操作</th>
											<th class="amount">实付款(元)</th>
											<th class="trade-status">
												<div class="trade-status">
													<div id="ks-component1970"
														class="bf-select bf-menu-button bf-button" tabindex="0"
														role="button" title="" aria-describedby=""
														aria-expanded="false" aria-haspopup="true"
														style="width: 86px; -moz-user-select: none;">
														<div style="-moz-user-select: none;"
															id="ks-content-ks-component1970"
															class="bf-select-content bf-menu-button-content bf-button-content">交易状态</div>
														<div
															class="bf-select-dropdown bf-menu-button-dropdown bf-button-dropdown">
															<div
																class="bf-select-dropdown-inner bf-menu-button-dropdown-inner bf-button-dropdown-inner">
															</div>
														</div>
													</div>
													<select style="display: none;" id="J_TradeStatusHandle"
														class="J_NiceSelect"
														data-config="{&quot;w&quot;: 86, &quot;h&quot;: 15}">
														<option data-msg="交易状态" value="ALL">交易状态</option>
														<option data-msg="等待买家付款" value="NOT_PAID">等待买家付款</option>
														<option data-msg="买家已付款" value="PAID">买家已付款</option>
														<option data-msg="卖家已发货" value="SEND">卖家已发货</option>
														<option data-msg="交易成功" value="SUCCESS">交易成功</option>
														<option data-msg="交易关闭" value="DROP">交易关闭</option>
														<option data-msg="退款中的订单" value="REFUNDING">退款中的订单</option>
													</select>

												</div>
											</th>
											<th class="trade-operate">交易操作</th>
										</tr>
										<tr class="toolbar toolbar-top">
											<td colspan="6"><label class="control-label"><input
													id="All" type="checkbox">全选</label></td>
											<td><a class="btn" href=""> 下一页 </a></td>
										</tr>
									</thead>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-07-10 17:34">2015-07-10</span>
													<span class="number last-item">订单号：<em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="xdonghai90" data-tnick="xdonghai90"
												data-display="inline"
												data-item="$bizOrder.itemID:1146901796648843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"
													class="ww-inline ww-online"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=xdonghai90"
													target="_blank"><span>旺旺在线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class="resale"
														href="//sell.2.taobao.com/publish/outer_site_resell.htm?biz_order_id=1146901796648843&amp;is_archive=false"
														target="_blank" title="转卖"> 转卖 </a> <a
														class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1146901796648843&amp;isArchive=false"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1146901796648843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=false&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1146901796648843"
												id="payOrderId_1146901796648843" value="1146901796648843"
												type="hidden"> <input
												name="tradeStatus_1146901796648843"
												id="tradeStatus_1146901796648843" value="TRADE_FINISHED"
												type="hidden"> <input name="sellerId"
												value="252211998" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1146901796648843"
												id="tradeStatus_1146901796648843" value="TRADE_FINISHED"
												type="hidden">
											</td>
										</tr>


										<tr id="item1146901796648843" class="order-bd 
    last     ">
											<td class="baobei"><a target="_blank" title="查看宝贝详情"
												href="//item.taobao.com/item.htm?id=520085310210&amp;_u=e23k9ao49400"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i4/252211998/TB2DXvkdXXXXXbMXpXXXXXXXXXX_!!252211998.jpg_80x80.jpg ">
											</a>
												<div class="desc">
													<p class="baobei-name">
														<a target="_blank"
															href="//item.taobao.com/item.htm?id=520085310210&amp;_u=e23k9ao49400"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6">
															夏装亚麻短袖T恤套装男韩版修身大码T恤衫男士棉麻V领休闲套装潮 </a> <a
															href="//trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=1146901796648843&amp;snapShot=true"
															target="_blank" class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.7">[交易快照]</a>
													</p>
													<span>颜色: 白色</span><span>尺码: L</span>
												</div> <span class="good-icons"> <a title=""
													href="http://trade.taobao.com/trade/security/security_card.htm?bizOrderId=1146901796648843"
													target="_blank" style="vertical-align: middle;"> <img
														src="//img.alicdn.com/tps/i2/T1S4ysXh8pXXXXXXXX-52-16.png">
												</a>
											</span></td>
											<td class="price" title="159.00"><em
												class="origin-price special-num">159.00</em><br> <i
												class="special-num">96.00</i></td>
											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>
											<td class="item-operate"><a href="javascript:void(0)"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.36"
												data-point-hidedialog="//gm.mmstat.com/listbought.1.40">
													申请售后 </a> <a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden">
												<a
												href="//baoxian.taobao.com/thwy/detail.html?biz_trade_id=1146901796648843&amp;biz_order_id=1146901796648843&amp;type=yfx1"
												target="_blank" class="J_MakePoint"
												data-point-url="$dataPointUrl">运费险失效</a></td>
											<td class="amount td-last" rowspan="2">
												<p>
													<em class="real-price special-num"> 96.00 </em>
												</p>
												<p class="post-type"></p>
												<p>
													(含运费：<i class="special-num">0.00</i> )
												</p>
											</td>
											<td class="trade-status td-last" rowspan="2"><a
												href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1146901796648843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.11"
												class="J_MakePoint status"> 交易成功 </a> <span> <a
													href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1146901796648843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>
											</span> <a
												href="//wuliu.taobao.com/user/order_detail_new.htm?trade_id=1146901796648843&amp;seller_id=252211998"
												class="view-logistics J_MakePoint J_Logistics "
												target="_blank"
												data-url="/trade/json/transit_step.do?bizOrderId=1146901796648843"
												data-point-url="//gm.mmstat.com/listbought.1.28"
												data-point-viewall="//gm.mmstat.com/listbought.2.2"
												data-point-show="//gm.mmstat.com/listbought.2.1"
												data-point-mobile="//gm.mmstat.com/wap.1001.4"> 查看物流 </a>
												<div class="remark-status">
													<a
														href="//rate.taobao.com/RateDetailBuyer.htm?parentTradeId=1146901796648843"
														target="_blank"> 双方已评 </a>
												</div></td>
											<td class="trade-operate td-last" rowspan=" 2 "><a
												href="//rate.taobao.com/append_rate.htm?biz_order_id=1146901796648843&amp;is_archive=false"
												target="_blank" class="J_Rate J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.1.6">追加评论</a></td>
										</tr>
										<tr class="order-bd freight-info order-last">
											<td class="baobei"><a
												href="//prod-baoxian.taobao.com/item/query.htm?bizOrderId=1146901796648843"
												target="_blank"> 保险服务 </a></td>
											<td class="price"><i class="special-num">0.00</i></td>
											<td class="quantity">-</td>
											<td class="item-operate"></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1089471239368843"
										data-status="TRADE_FINISHED"
										class="mainOrder1089471239368843  success-order xcard">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1089471239368843" name="biz_order_id"
														value="1089471239368843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-06-20 16:20">2015-06-20</span>
													<span class="number last-item">订单号：<em>1089471239368843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a target="_blank"
												class="shopname J_MakePoint" title="迅雷12小时白金会员"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=688442528"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													迅雷12小时... </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="janezhou523" data-tnick="janezhou523"
												data-display="inline"
												data-item="$bizOrder.itemID:1089471239368843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													class="ww-inline ww-offline"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=janezhou523"
													target="_blank"><span>旺旺离线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;44462298405&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1089471239368843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1089471239368843&amp;isArchive=false"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1089471239368843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=false&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1089471239368843"
												id="payOrderId_1089471239368843" value="1089471239368843"
												type="hidden"> <input
												name="tradeStatus_1089471239368843"
												id="tradeStatus_1089471239368843" value="TRADE_FINISHED"
												type="hidden"> <input name="sellerId"
												value="688442528" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1089471239368843"
												id="tradeStatus_1089471239368843" value="TRADE_FINISHED"
												type="hidden">
											</td>
										</tr>
										<tr id="item1089471239368843" class="order-bd 
    last     ">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//item.taobao.com/item.htm?id=44462298405&amp;_u=e23k9ao49b92"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i3/TB1fFmDGVXXXXaIXVXXXXXXXXXX_!!2-item_pic.png_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//item.taobao.com/item.htm?id=44462298405&amp;_u=e23k9ao49b92"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6">
															迅雷白金会员0.01出租12h小时一人独享离线云播高速下载24h自动发 </a> <a
															href="//trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=1089471239368843&amp;snapShot=true"
															target="_blank" class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.7">[交易快照]</a>
													</p>




													<div class="spec" title=""></div>



													<span class="good-icons"> <a title=""
														href="http://trade.taobao.com/trade/security/security_card.htm?bizOrderId=1089471239368843"
														target="_blank" style="vertical-align: middle;"> <img
															src="//img.alicdn.com/tps/i2/T1S4ysXh8pXXXXXXXX-52-16.png">

													</a>


													</span>






												</div></td>

											<td class="price" title="0.10"><em
												class="origin-price special-num">0.10</em><br> <i
												class="special-num">0.08</i></td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>



											<td class="item-operate"><a href="javascript:void(0)"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.36"
												data-point-hidedialog="//gm.mmstat.com/listbought.1.40">
													申请售后 </a> <a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden">
												<a
												href="//baoxian.taobao.com/thwy/detail.html?biz_trade_id=1089471239368843&amp;biz_order_id=1089471239368843&amp;type=yfx1"
												target="_blank" class="J_MakePoint"
												data-point-url="$dataPointUrl">运费险取消</a></td>






											<td class="amount td-last" rowspan="2">






												<p>
													<em class="real-price special-num"> 0.08 </em>
												</p>

												<p class="post-type"></p>


												<p>
													(含运费：<i class="special-num">0.00</i> )
												</p> <a title="手机订单"
												href="http://www.taobao.com/m?sprefer=symj28"
												target="_blank"> <img
													src="//img.alicdn.com/tps/i1/T1xRBqXdNAXXXXXXXX-46-16.png">
											</a>

											</td>


											<td class="trade-status td-last" rowspan="2"><a
												href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1089471239368843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.11"
												class="J_MakePoint status"> 交易成功 </a> <span> <a
													href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1089471239368843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span> <a
												href="//wuliu.taobao.com/user/order_detail_new.htm?trade_id=1089471239368843&amp;seller_id=688442528"
												class="view-logistics J_MakePoint J_Logistics "
												target="_blank"
												data-url="/trade/json/transit_step.do?bizOrderId=1089471239368843"
												data-point-url="//gm.mmstat.com/listbought.1.28"
												data-point-viewall="//gm.mmstat.com/listbought.2.2"
												data-point-show="//gm.mmstat.com/listbought.2.1"
												data-point-mobile="//gm.mmstat.com/wap.1001.4"> 查看物流 </a>


												<div class="remark-status">
													<a
														href="//rate.taobao.com/RateDetailBuyer.htm?parentTradeId=1089471239368843"
														target="_blank"> 双方已评 </a>
												</div></td>

											<td class="trade-operate td-last" rowspan=" 2 "><a
												href="//rate.taobao.com/append_rate.htm?biz_order_id=1089471239368843&amp;is_archive=false"
												target="_blank" class="J_Rate J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.1.6">追加评论</a></td>
										</tr>





										<tr class="order-bd freight-info order-last">
											<td class="baobei"><a
												href="//prod-baoxian.taobao.com/item/query.htm?bizOrderId=1089471239368843"
												target="_blank"> 保险服务 </a></td>
											<td class="price"><i class="special-num">0.00</i></td>
											<td class="quantity">-</td>
											<td class="item-operate"></td>
										</tr>



									</tbody>




									<tbody data-isarchive="false" data-orderid="1072702270968843"
										data-status="TRADE_FINISHED"
										class="mainOrder1072702270968843  success-order tm3c-order">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1072702270968843" name="biz_order_id"
														value="1072702270968843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-06-02 12:32">2015-06-02</span>
													<span class="number last-item">订单号：<em>1072702270968843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a title="已买到-天猫电器城"
												href="http://3c.tmall.com/" target="_blank"> <img
													src="//img.alicdn.com/tps/i2/T1kDbiFFNcXXaSQP_X-16-16.png">
											</a> <a target="_blank" class="shopname J_MakePoint"
												title="中国移动官方旗舰店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=1776456424"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													中国移动官... </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="中国移动官方旗舰店" data-tnick="中国移动官方旗舰店"
												data-display="inline"
												data-item="$bizOrder.itemID:1072702270968843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"
													class="ww-inline ww-online"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=中国移动官方旗舰店"
													target="_blank"><span>旺旺在线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;38030495309&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1072702270968843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1072702270968843&amp;isArchive=false"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1072702270968843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=false&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1072702270968843"
												id="payOrderId_1072702270968843" value="1072702270968843"
												type="hidden"> <input
												name="tradeStatus_1072702270968843"
												id="tradeStatus_1072702270968843" value="TRADE_FINISHED"
												type="hidden"> <input name="sellerId"
												value="1776456424" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1072702270968843"
												id="tradeStatus_1072702270968843" value="TRADE_FINISHED"
												type="hidden">
											</td>
										</tr>


										<tr id="item1072702270968843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//buy.taobao.com/auction/buy_now.jhtml?item_id_num=38030495309"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i3/TB1zilNGXXXXXXXXpXXXXXXXXXX_!!0-item_pic.jpg_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//buy.taobao.com/auction/buy_now.jhtml?item_id_num=38030495309"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6"> 广东移动
															手机 话费充值 50元 快充直充 24小时自动充即时到账 </a>
													</p>




													<div class="spec" title=""></div>



													<span class="good-icons"> <a
														href="//www.taobao.com/go/act/315/xfzbz_rsms.php?ad_id=&amp;am_id=130011830696bce9eda3&amp;cm_id=&amp;pm_id="
														title="如实描述" target="_blank"> <span
															class="tb-brand tb-brand-xb"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_jyps.php?ad_id=&amp;am_id=1300118304240d56fca9&amp;cm_id=&amp;pm_id="
														title="假一赔三" target="_blank"> <span
															class="tb-brand tb-brand-jyps"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_zpbz.php?ad_id=&amp;am_id=130011830709c0515500&amp;cm_id=&amp;pm_id="
														title="正品保证" target="_blank"> <span
															class="tb-brand tb-brand-zpbz"> <i class="tb-icon"></i>
														</span>
													</a>




													</span>






												</div></td>

											<td class="price" title="49.50"><i class="special-num">49.50</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>



											<td class="item-operate">











												<div class="entrance">
													<a href="//fuwutai.tmall.com/myservice/fuwutai/index.htm"
														target="_blank">电器城服务台</a>  
												</div> <a href="javascript:void(0)"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.36"
												data-point-hidedialog="//gm.mmstat.com/listbought.1.40">
													申请售后 </a> <a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden">












											</td>






											<td class="amount" rowspan="1">






												<p>
													<em class="real-price special-num"> 49.50 </em>
												</p>

												<p class="post-type">(自动充值)</p> <a title="手机订单"
												href="http://www.taobao.com/m?sprefer=symj28"
												target="_blank"> <img
													src="//img.alicdn.com/tps/i1/T1xRBqXdNAXXXXXXXX-46-16.png">
											</a>

											</td>


											<td class="trade-status" rowspan="1"><a
												href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1072702270968843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.11"
												class="J_MakePoint status"> 交易成功 </a> <span> <a
													href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1072702270968843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span></td>
											<td class="trade-operate"><a
												href="//rate.taobao.com/append_rate.htm?biz_order_id=1072702270968843&amp;sub_trade_id=1072702270968843&amp;is_archive=false"
												target="_blank" class="J_Rate J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.1.6">追加评论</a> 
											</td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1039321840548843"
										data-status="TRADE_FINISHED"
										class="mainOrder1039321840548843  success-order tm3c-order">
										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1039321840548843" name="biz_order_id"
														value="1039321840548843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-05-01 17:48">2015-05-01</span>
													<span class="number last-item">订单号：<em>1039321840548843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a title="已买到-天猫电器城"
												href="http://3c.tmall.com/" target="_blank"> <img
													src="//img.alicdn.com/tps/i2/T1kDbiFFNcXXaSQP_X-16-16.png">
											</a> <a target="_blank" class="shopname J_MakePoint"
												title="中国移动官方旗舰店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=1776456424"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													中国移动官... </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="中国移动官方旗舰店" data-tnick="中国移动官方旗舰店"
												data-display="inline"
												data-item="$bizOrder.itemID:1039321840548843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"
													class="ww-inline ww-online"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=中国移动官方旗舰店"
													target="_blank"><span>旺旺在线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;38043249922&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1039321840548843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1039321840548843&amp;isArchive=false"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1039321840548843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=false&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1039321840548843"
												id="payOrderId_1039321840548843" value="1039321840548843"
												type="hidden"> <input
												name="tradeStatus_1039321840548843"
												id="tradeStatus_1039321840548843" value="TRADE_FINISHED"
												type="hidden"> <input name="sellerId"
												value="1776456424" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1039321840548843"
												id="tradeStatus_1039321840548843" value="TRADE_FINISHED"
												type="hidden">
											</td>
										</tr>
										<tr id="item1039321840548843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//buy.taobao.com/auction/buy_now.jhtml?item_id_num=38043249922"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i3/TB1s4hLGXXXXXbgXpXXXXXXXXXX_!!0-item_pic.jpg_80x80.jpg ">
											</a>
												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//buy.taobao.com/auction/buy_now.jhtml?item_id_num=38043249922"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6"> 广东移动
															手机 话费充值 30元 快充直充 24小时自动充即时到账 </a>
													</p>
													<div class="spec" title=""></div>
													<span class="good-icons"> <a
														href="//www.taobao.com/go/act/315/xfzbz_rsms.php?ad_id=&amp;am_id=130011830696bce9eda3&amp;cm_id=&amp;pm_id="
														title="如实描述" target="_blank"> <span
															class="tb-brand tb-brand-xb"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_jyps.php?ad_id=&amp;am_id=1300118304240d56fca9&amp;cm_id=&amp;pm_id="
														title="假一赔三" target="_blank"> <span
															class="tb-brand tb-brand-jyps"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_zpbz.php?ad_id=&amp;am_id=130011830709c0515500&amp;cm_id=&amp;pm_id="
														title="正品保证" target="_blank"> <span
															class="tb-brand tb-brand-zpbz"> <i class="tb-icon"></i>
														</span>
													</a>
													</span>
												</div></td>
											<td class="price" title="29.70"><i class="special-num">29.70</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>
											<td class="item-operate">
												<div class="entrance">
													<a href="//fuwutai.tmall.com/myservice/fuwutai/index.htm"
														target="_blank">电器城服务台</a>  
												</div> <a href="javascript:void(0)"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.36"
												data-point-hidedialog="//gm.mmstat.com/listbought.1.40">
													申请售后 </a> <a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden">
											</td>
											<td class="amount" rowspan="1">
												<p>
													<em class="real-price special-num"> 29.70 </em>
												</p>

												<p class="post-type">(自动充值)</p> <a title="手机订单"
												href="http://www.taobao.com/m?sprefer=symj28"
												target="_blank"> <img
													src="//img.alicdn.com/tps/i1/T1xRBqXdNAXXXXXXXX-46-16.png">
											</a>

											</td>


											<td class="trade-status" rowspan="1"><a
												href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1039321840548843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.11"
												class="J_MakePoint status"> 交易成功 </a> <span> <a
													href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1039321840548843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span>
												<div class="remark-status">双方已评</div></td>


											<td class="trade-operate"><a
												href="//rate.taobao.com/append_rate.htm?biz_order_id=1039321840548843&amp;sub_trade_id=1039321840548843&amp;is_archive=false"
												target="_blank" class="J_Rate J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.1.6">追加评论</a></td>
										</tr>








									</tbody>




									<tbody data-isarchive="true" data-orderid="1038433050598843"
										data-status="CREATE_CLOSED_OF_TAOBAO"
										class="mainOrder1038433050598843  close-order tm3c-order">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1038433050598843" name="biz_order_id"
														value="1038433050598843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-05-01 16:36">2015-05-01</span>
													<span class="number last-item">订单号：<em>1038433050598843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a title="已买到-天猫电器城"
												href="http://3c.tmall.com/" target="_blank"> <img
													src="//img.alicdn.com/tps/i2/T1kDbiFFNcXXaSQP_X-16-16.png">
											</a> <a target="_blank" class="shopname J_MakePoint"
												title="中国移动官方旗舰店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=1776456424"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													中国移动官... </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="中国移动官方旗舰店" data-tnick="中国移动官方旗舰店"
												data-display="inline"
												data-item="$bizOrder.itemID:1038433050598843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"
													class="ww-inline ww-online"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=中国移动官方旗舰店"
													target="_blank"><span>旺旺在线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;38043597371&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1038433050598843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1038433050598843&amp;isArchive=true"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1038433050598843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=true&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1038433050598843"
												id="payOrderId_1038433050598843" value="1038433050598843"
												type="hidden"> <input
												name="tradeStatus_1038433050598843"
												id="tradeStatus_1038433050598843"
												value="CREATE_CLOSED_OF_TAOBAO" type="hidden"> <input
												name="sellerId" value="1776456424" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1038433050598843"
												id="tradeStatus_1038433050598843"
												value="CREATE_CLOSED_OF_TAOBAO" type="hidden">
											</td>
										</tr>


										<tr id="item1038433050598843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//buy.taobao.com/auction/buy_now.jhtml?item_id_num=38043597371"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i2/TB1hvFCGXXXXXbyXVXXXXXXXXXX_!!0-item_pic.jpg_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//buy.taobao.com/auction/buy_now.jhtml?item_id_num=38043597371"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6"> 广东移动
															手机 话费充值 100元 快充直充 24小时自动充即时到账 </a>
													</p>




													<div class="spec" title=""></div>



													<span class="good-icons"> <a
														href="//www.taobao.com/go/act/315/xfzbz_rsms.php?ad_id=&amp;am_id=130011830696bce9eda3&amp;cm_id=&amp;pm_id="
														title="如实描述" target="_blank"> <span
															class="tb-brand tb-brand-xb"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_jyps.php?ad_id=&amp;am_id=1300118304240d56fca9&amp;cm_id=&amp;pm_id="
														title="假一赔三" target="_blank"> <span
															class="tb-brand tb-brand-jyps"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_zpbz.php?ad_id=&amp;am_id=130011830709c0515500&amp;cm_id=&amp;pm_id="
														title="正品保证" target="_blank"> <span
															class="tb-brand tb-brand-zpbz"> <i class="tb-icon"></i>
														</span>
													</a>




													</span>






												</div></td>

											<td class="price" title="99.00"><i class="special-num">99.00</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>



											<td class="item-operate">











												<div class="entrance">
													<a href="//fuwutai.tmall.com/myservice/fuwutai/index.htm"
														target="_blank">电器城服务台</a>  
												</div> <a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden">












											</td>






											<td class="amount" rowspan="1">






												<p>
													<em class="real-price special-num"> 99.00 </em>
												</p>

												<p class="post-type">(自动充值)</p> <a title="手机订单"
												href="http://www.taobao.com/m?sprefer=symj28"
												target="_blank"> <img
													src="//img.alicdn.com/tps/i1/T1xRBqXdNAXXXXXXXX-46-16.png">
											</a>

											</td>


											<td class="trade-status" rowspan="1"><a
												href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1038433050598843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.12"
												class="J_MakePoint status"> 交易关闭 </a> <span> <a
													href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1038433050598843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span></td>

											<td class="trade-operate" rowspan=" 1 "></td>
										</tr>








									</tbody>




									<tbody data-isarchive="true" data-orderid="1037502506208843"
										data-status="CREATE_CLOSED_OF_TAOBAO"
										class="mainOrder1037502506208843  close-order tm3c-order">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1037502506208843" name="biz_order_id"
														value="1037502506208843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-05-01 16:34">2015-05-01</span>
													<span class="number last-item">订单号：<em>1037502506208843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a title="已买到-天猫电器城"
												href="http://3c.tmall.com/" target="_blank"> <img
													src="//img.alicdn.com/tps/i2/T1kDbiFFNcXXaSQP_X-16-16.png">
											</a> <a target="_blank" class="shopname J_MakePoint"
												title="中国移动官方旗舰店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=1776456424"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													中国移动官... </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="中国移动官方旗舰店" data-tnick="中国移动官方旗舰店"
												data-display="inline"
												data-item="$bizOrder.itemID:1037502506208843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"
													class="ww-inline ww-online"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=中国移动官方旗舰店"
													target="_blank"><span>旺旺在线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;38043597371&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1037502506208843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1037502506208843&amp;isArchive=true"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1037502506208843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=true&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1037502506208843"
												id="payOrderId_1037502506208843" value="1037502506208843"
												type="hidden"> <input
												name="tradeStatus_1037502506208843"
												id="tradeStatus_1037502506208843"
												value="CREATE_CLOSED_OF_TAOBAO" type="hidden"> <input
												name="sellerId" value="1776456424" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1037502506208843"
												id="tradeStatus_1037502506208843"
												value="CREATE_CLOSED_OF_TAOBAO" type="hidden">
											</td>
										</tr>


										<tr id="item1037502506208843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//buy.taobao.com/auction/buy_now.jhtml?item_id_num=38043597371"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i2/TB1hvFCGXXXXXbyXVXXXXXXXXXX_!!0-item_pic.jpg_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//buy.taobao.com/auction/buy_now.jhtml?item_id_num=38043597371"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6"> 广东移动
															手机 话费充值 100元 快充直充 24小时自动充即时到账 </a>
													</p>




													<div class="spec" title=""></div>



													<span class="good-icons"> <a
														href="//www.taobao.com/go/act/315/xfzbz_rsms.php?ad_id=&amp;am_id=130011830696bce9eda3&amp;cm_id=&amp;pm_id="
														title="如实描述" target="_blank"> <span
															class="tb-brand tb-brand-xb"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_jyps.php?ad_id=&amp;am_id=1300118304240d56fca9&amp;cm_id=&amp;pm_id="
														title="假一赔三" target="_blank"> <span
															class="tb-brand tb-brand-jyps"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_zpbz.php?ad_id=&amp;am_id=130011830709c0515500&amp;cm_id=&amp;pm_id="
														title="正品保证" target="_blank"> <span
															class="tb-brand tb-brand-zpbz"> <i class="tb-icon"></i>
														</span>
													</a>




													</span>






												</div></td>

											<td class="price" title="99.00"><i class="special-num">99.00</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>



											<td class="item-operate">











												<div class="entrance">
													<a href="//fuwutai.tmall.com/myservice/fuwutai/index.htm"
														target="_blank">电器城服务台</a> 
												</div> <a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden">












											</td>






											<td class="amount" rowspan="1">






												<p>
													<em class="real-price special-num"> 99.00 </em>
												</p>

												<p class="post-type">(自动充值)</p> <a title="手机订单"
												href="http://www.taobao.com/m?sprefer=symj28"
												target="_blank"> <img
													src="//img.alicdn.com/tps/i1/T1xRBqXdNAXXXXXXXX-46-16.png">
											</a>

											</td>


											<td class="trade-status" rowspan="1"><a
												href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1037502506208843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.12"
												class="J_MakePoint status"> 交易关闭 </a> <span> <a
													href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1037502506208843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span></td>

											<td class="trade-operate" rowspan=" 1 "></td>
										</tr>








									</tbody>




									<tbody data-isarchive="true" data-orderid="1027282016358843"
										data-status="TRADE_CLOSED"
										class="mainOrder1027282016358843  close-order">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1027282016358843" name="biz_order_id"
														value="1027282016358843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-04-18 20:20">2015-04-18</span>
													<span class="number last-item">订单号：<em>1027282016358843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a target="_blank"
												class="shopname J_MakePoint" title="爱尚金牌卖家"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=1918592299"
												data-point-url="//gm.mmstat.com/listbought.1.21"> 爱尚金牌卖家
											</a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="爱尚艾特牛" data-tnick="爱尚艾特牛" data-display="inline"
												data-item="$bizOrder.itemID:1027282016358843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"
													class="ww-inline ww-online"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=爱尚艾特牛"
													target="_blank"><span>旺旺在线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;44393183042&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1027282016358843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1027282016358843&amp;isArchive=true"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1027282016358843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=true&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1027282016358843"
												id="payOrderId_1027282016358843" value="1027282016358843"
												type="hidden"> <input
												name="tradeStatus_1027282016358843"
												id="tradeStatus_1027282016358843" value="TRADE_CLOSED"
												type="hidden"> <input name="sellerId"
												value="1918592299" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1027282016358843"
												id="tradeStatus_1027282016358843" value="TRADE_CLOSED"
												type="hidden">
											</td>
										</tr>


										<tr id="item1027282016358843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//item.taobao.com/item.htm?id=44393183042&amp;_u=e23k9ao4183d"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i3/TB1.t9SGFXXXXX3XVXXXXXXXXXX_!!0-item_pic.jpg_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//item.taobao.com/item.htm?id=44393183042&amp;_u=e23k9ao4183d"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6">
															迅雷会员VIP账号出租云播放 一人1号 体验12h小时非6h 0.01 自动 </a> <a
															href="//tradearchive.taobao.com/trade/detail/tradeSnap.htm?tradeID=1027282016358843"
															target="_blank" class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.7">[交易快照]</a>
													</p>




													<div class="spec" title=""></div>



													<span class="good-icons"> <a title=""
														href="http://trade.taobao.com/trade/security/security_card.htm?bizOrderId=1027282016358843"
														target="_blank" style="vertical-align: middle;"> <img
															src="//img.alicdn.com/tps/i2/T1S4ysXh8pXXXXXXXX-52-16.png">

													</a>


													</span>






												</div></td>

											<td class="price" title="0.10"><i class="special-num">0.10</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>



											<td class="item-operate"><a
												class="J_MakePoint refund-status blue-status refund-icon-money"
												target="_blank"
												href="//tradearchive.taobao.com/trade/itemlist/common/refunds_and_rebates.htm?bizType=200&amp;bizOrderId=1027282016358843"
												data-point-url="//gm.mmstat.com/listbought.1.43"> 查看退款 </a>
												<a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden"></td>






											<td class="amount" rowspan="1">






												<p>
													<em class="real-price special-num"> 0.10 </em>
												</p>

												<p class="post-type"></p>


												<p>
													(含运费：<i class="special-num">0.00</i> )
												</p> <a title="手机订单"
												href="http://www.taobao.com/m?sprefer=symj28"
												target="_blank"> <img
													src="//img.alicdn.com/tps/i1/T1xRBqXdNAXXXXXXXX-46-16.png">
											</a>

											</td>


											<td class="trade-status" rowspan="1"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1027282016358843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.12"
												class="J_MakePoint status"> 交易关闭 </a> <span> <a
													href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1027282016358843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span></td>

											<td class="trade-operate" rowspan=" 1 "></td>
										</tr>








									</tbody>




									<tbody data-isarchive="true" data-orderid="1025137385128843"
										data-status="TRADE_FINISHED"
										class="mainOrder1025137385128843  success-order xcard">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1025137385128843" name="biz_order_id"
														value="1025137385128843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-04-17 13:17">2015-04-17</span>
													<span class="number last-item">订单号：<em>1025137385128843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a target="_blank"
												class="shopname J_MakePoint" title="大武汉聪聪书屋"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=1752198440"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													大武汉聪聪书屋 </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="特价包邮书城" data-tnick="特价包邮书城" data-display="inline"
												data-item="$bizOrder.itemID:1025137385128843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													class="ww-inline ww-offline"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=特价包邮书城"
													target="_blank"><span>旺旺离线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;43905501901&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1025137385128843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class="resale"
														href="//sell.2.taobao.com/publish/outer_site_resell.htm?biz_order_id=1025137385128843&amp;is_archive=true"
														target="_blank" title="转卖"> 转卖 </a> <a
														class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1025137385128843&amp;isArchive=true"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1025137385128843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=true&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1025137385128843"
												id="payOrderId_1025137385128843" value="1025137385128843"
												type="hidden"> <input
												name="tradeStatus_1025137385128843"
												id="tradeStatus_1025137385128843" value="TRADE_FINISHED"
												type="hidden"> <input name="sellerId"
												value="1752198440" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1025137385128843"
												id="tradeStatus_1025137385128843" value="TRADE_FINISHED"
												type="hidden">
											</td>
										</tr>


										<tr id="item1025137385128843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//item.taobao.com/item.htm?id=43905501901&amp;_u=e23k9ao4fdc8"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i3/TB1BMQuHpXXXXXoXXXXXXXXXXXX_!!0-item_pic.jpg_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//item.taobao.com/item.htm?id=43905501901&amp;_u=e23k9ao4fdc8"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6"> 多省包邮
															Java核心技术 卷I 基础知识 +卷2高级特性 + Effective </a> <a
															href="//tradearchive.taobao.com/trade/detail/tradeSnap.htm?tradeID=1025137385128843"
															target="_blank" class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.7">[交易快照]</a>
													</p>




													<div class="spec" title=""></div>



													<span class="good-icons"> <a title=""
														href="http://trade.taobao.com/trade/security/security_card.htm?bizOrderId=1025137385128843"
														target="_blank" style="vertical-align: middle;"> <img
															src="//img.alicdn.com/tps/i2/T1S4ysXh8pXXXXXXXX-52-16.png">

													</a>


													</span>






												</div></td>

											<td class="price" title="45.00"><i class="special-num">45.00</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>



											<td class="item-operate"><a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden"></td>






											<td class="amount" rowspan="1">






												<p>
													<em class="real-price special-num"> 45.00 </em>
												</p>

												<p class="post-type"></p>


												<p>
													(含运费：<i class="special-num">0.00</i> )
												</p> <a title="手机订单"
												href="http://www.taobao.com/m?sprefer=symj28"
												target="_blank"> <img
													src="//img.alicdn.com/tps/i1/T1xRBqXdNAXXXXXXXX-46-16.png">
											</a>

											</td>


											<td class="trade-status" rowspan="1"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1025137385128843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.11"
												class="J_MakePoint status"> 交易成功 </a> <span> <a
													href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1025137385128843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span>













												<div class="remark-status">
													<a
														href="//rate.taobao.com/RateDetailBuyer.htm?parentTradeId=1025137385128843"
														target="_blank"> 双方已评 </a>
												</div></td>

											<td class="trade-operate" rowspan=" 1 "><a
												href="//rate.taobao.com/append_rate.htm?biz_order_id=1025137385128843&amp;is_archive=true"
												target="_blank" class="J_Rate J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.1.6">追加评论</a></td>
										</tr>








									</tbody>




									<tbody data-isarchive="true" data-orderid="1019964738778843"
										data-status="TRADE_FINISHED"
										class="mainOrder1019964738778843  success-order xcard">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1019964738778843" name="biz_order_id"
														value="1019964738778843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-04-09 22:05">2015-04-09</span>
													<span class="number last-item">订单号：<em>1019964738778843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><span class="g-u">
													<a href="//www.tmall.com"><img
														src="//gtd.alicdn.com/tps/i2/T14aUaFNJaXXaSQP_X-16-16.png"></a>
											</span> <a target="_blank" class="shopname J_MakePoint"
												title="karivita卡瑞特兹旗舰店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=1579481027"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													karivita卡... </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="karivita卡瑞特兹旗舰店" data-tnick="karivita卡瑞特兹旗舰店"
												data-display="inline"
												data-item="$bizOrder.itemID:1019964738778843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"
													class="ww-inline ww-online"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=karivita卡瑞特兹旗舰店"
													target="_blank"><span>旺旺在线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;22397571957&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1019964738778843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class="resale"
														href="//sell.2.taobao.com/publish/outer_site_resell.htm?biz_order_id=1019964738778843&amp;is_archive=true"
														target="_blank" title="转卖"> 转卖 </a> <a
														class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1019964738778843&amp;isArchive=true"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1019964738778843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=true&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1019964738778843"
												id="payOrderId_1019964738778843" value="1019964738778843"
												type="hidden"> <input
												name="tradeStatus_1019964738778843"
												id="tradeStatus_1019964738778843" value="TRADE_FINISHED"
												type="hidden"> <input name="sellerId"
												value="1579481027" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1019964738778843"
												id="tradeStatus_1019964738778843" value="TRADE_FINISHED"
												type="hidden">
											</td>
										</tr>


										<tr id="item1019964738778843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//item.taobao.com/item.htm?id=22397571957&amp;_u=e23k9ao4ca2e"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i2/TB1Mj6PHpXXXXa2XVXXXXXXXXXX_!!0-item_pic.jpg_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//item.taobao.com/item.htm?id=22397571957&amp;_u=e23k9ao4ca2e"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6">
															新西兰进口全脂奶粉 高蛋白无糖 成人儿童学生青少年900g </a> <a
															href="//tradearchive.taobao.com/trade/detail/tradeSnap.htm?tradeID=1019964738778843"
															target="_blank" class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.7">[交易快照]</a>
													</p>




													<div class="spec" title=""></div>



													<span class="good-icons"> <a
														href="//www.tmall.com/market/mall/qttk.php?spm=3.7095809.2000g001.2.RuHN6j%3E"
														title="七天退换" target="_blank"> <span
															class="tb-brand tb-brand-qtth"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_rsms.php?ad_id=&amp;am_id=130011830696bce9eda3&amp;cm_id=&amp;pm_id="
														title="如实描述" target="_blank"> <span
															class="tb-brand tb-brand-xb"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_jyps.php?ad_id=&amp;am_id=1300118304240d56fca9&amp;cm_id=&amp;pm_id="
														title="假一赔三" target="_blank"> <span
															class="tb-brand tb-brand-jyps"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_zpbz.php?ad_id=&amp;am_id=130011830709c0515500&amp;cm_id=&amp;pm_id="
														title="正品保证" target="_blank"> <span
															class="tb-brand tb-brand-zpbz"> <i class="tb-icon"></i>
														</span>
													</a>




													</span>






												</div></td>

											<td class="price" title="198.00"><i class="special-num">198.00</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>
											<td class="item-operate"></td>
											<td class="amount" rowspan="1">
												<p>
													<em class="real-price special-num"> 143.00 </em>
												</p>
												<p class="post-type"></p>
												<p>
													(含运费：<i class="special-num">0.00</i> )
												</p>
											</td>
											<td class="trade-status" rowspan="1"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1019964738778843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.11"
												class="J_MakePoint status"> 交易成功 </a> <span> <a
													href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1019964738778843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>
											</span>
												<div class="remark-status">双方已评</div></td>
											<td class="trade-operate"><a
												href="//rate.taobao.com/append_rate.htm?biz_order_id=1019964738778843&amp;sub_trade_id=1019964738778843&amp;is_archive=true"
												target="_blank" class="J_Rate J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.1.6">追加评论</a></td>
										</tr>








									</tbody>




									<tbody data-isarchive="true" data-orderid="1015534175508843"
										data-status="TRADE_FINISHED"
										class="mainOrder1015534175508843  success-order">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1015534175508843" name="biz_order_id"
														value="1015534175508843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-04-04 16:19">2015-04-04</span>
													<span class="number last-item">订单号：<em>1015534175508843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a target="_blank"
												class="shopname J_MakePoint" title="家家迅雷"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=1986845811"
												data-point-url="//gm.mmstat.com/listbought.1.21"> 家家迅雷 </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="liuenshuo0608" data-tnick="liuenshuo0608"
												data-display="inline"
												data-item="$bizOrder.itemID:1015534175508843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"
													class="ww-inline ww-online"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=liuenshuo0608"
													target="_blank"><span>旺旺在线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;40863009259&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1015534175508843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1015534175508843&amp;isArchive=true"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1015534175508843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=true&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1015534175508843"
												id="payOrderId_1015534175508843" value="1015534175508843"
												type="hidden"> <input
												name="tradeStatus_1015534175508843"
												id="tradeStatus_1015534175508843" value="TRADE_FINISHED"
												type="hidden"> <input name="sellerId"
												value="1986845811" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1015534175508843"
												id="tradeStatus_1015534175508843" value="TRADE_FINISHED"
												type="hidden">
											</td>
										</tr>


										<tr id="item1015534175508843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//item.taobao.com/item.htm?id=40863009259&amp;_u=e23k9ao46b22"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i2/TB1gtkOFVXXXXXEaXXXXXXXXXXX_!!0-item_pic.jpg_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//item.taobao.com/item.htm?id=40863009259&amp;_u=e23k9ao46b22"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6">
															xunlei迅雷会员VIP账号出租 高速离线云播 一人一号 12h小时非6h </a> <a
															href="//tradearchive.taobao.com/trade/detail/tradeSnap.htm?tradeID=1015534175508843"
															target="_blank" class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.7">[交易快照]</a>
													</p>




													<div class="spec" title=""></div>



													<span class="good-icons"> <a title=""
														href="http://trade.taobao.com/trade/security/security_card.htm?bizOrderId=1015534175508843"
														target="_blank" style="vertical-align: middle;"> <img
															src="//img.alicdn.com/tps/i2/T1S4ysXh8pXXXXXXXX-52-16.png">

													</a>


													</span>






												</div></td>

											<td class="price" title="0.10"><i class="special-num">0.10</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>



											<td class="item-operate"><a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden"></td>






											<td class="amount" rowspan="1">






												<p>
													<em class="real-price special-num"> 0.10 </em>
												</p>

												<p class="post-type">(虚拟物品)</p> <a title="手机订单"
												href="http://www.taobao.com/m?sprefer=symj28"
												target="_blank"> <img
													src="//img.alicdn.com/tps/i1/T1xRBqXdNAXXXXXXXX-46-16.png">
											</a>

											</td>


											<td class="trade-status" rowspan="1"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1015534175508843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.11"
												class="J_MakePoint status"> 交易成功 </a> <span> <a
													href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1015534175508843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span>













												<div class="remark-status">
													<a
														href="//rate.taobao.com/RateDetailBuyer.htm?parentTradeId=1015534175508843"
														target="_blank"> 双方已评 </a>
												</div></td>

											<td class="trade-operate" rowspan=" 1 "><a
												href="//rate.taobao.com/append_rate.htm?biz_order_id=1015534175508843&amp;is_archive=true"
												target="_blank" class="J_Rate J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.1.6">追加评论</a></td>
										</tr>








									</tbody>




									<tbody data-isarchive="true" data-orderid="1011094913848843"
										data-status="TRADE_CLOSED"
										class="mainOrder1011094913848843  close-order xcard">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1011094913848843" name="biz_order_id"
														value="1011094913848843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-04-01 19:17">2015-04-01</span>
													<span class="number last-item">订单号：<em>1011094913848843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><span class="g-u">
													<a href="//www.tmall.com"><img
														src="//gtd.alicdn.com/tps/i2/T14aUaFNJaXXaSQP_X-16-16.png"></a>
											</span> <a target="_blank" class="shopname J_MakePoint"
												title="世纪悦翔图书专营店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=923351830"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													世纪悦翔图... </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="世纪悦翔图书专营店" data-tnick="世纪悦翔图书专营店"
												data-display="inline"
												data-item="$bizOrder.itemID:1011094913848843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"
													class="ww-inline ww-online"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=世纪悦翔图书专营店"
													target="_blank"><span>旺旺在线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;23051568044&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1011094913848843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1011094913848843&amp;isArchive=true"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1011094913848843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=true&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_1011094913848843"
												id="payOrderId_1011094913848843" value="1011094913848843"
												type="hidden"> <input
												name="tradeStatus_1011094913848843"
												id="tradeStatus_1011094913848843" value="TRADE_CLOSED"
												type="hidden"> <input name="sellerId"
												value="923351830" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_1011094913848843"
												id="tradeStatus_1011094913848843" value="TRADE_CLOSED"
												type="hidden">
											</td>
										</tr>


										<tr id="item1011094913848843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//item.taobao.com/item.htm?id=23051568044&amp;_u=e23k9ao42663"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i2/TB1_ydqGFXXXXX3XXXXXXXXXXXX_!!0-item_pic.jpg_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//item.taobao.com/item.htm?id=23051568044&amp;_u=e23k9ao42663"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6"> 现货包邮
															C程序设计语言 +习题解答 第2版 新版 2册装C程序设计语言//计算机科学丛书(第2版新版) </a> <a
															href="//tradearchive.taobao.com/trade/detail/tradeSnap.htm?tradeID=1011094913848843"
															target="_blank" class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.7">[交易快照]</a>
													</p>




													<div class="spec" title=""></div>



													<span class="good-icons"> <a
														href="//www.tmall.com/market/mall/qttk.php?spm=3.7095809.2000g001.2.RuHN6j%3E"
														title="七天退换" target="_blank"> <span
															class="tb-brand tb-brand-qtth"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_rsms.php?ad_id=&amp;am_id=130011830696bce9eda3&amp;cm_id=&amp;pm_id="
														title="如实描述" target="_blank"> <span
															class="tb-brand tb-brand-xb"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_jyps.php?ad_id=&amp;am_id=1300118304240d56fca9&amp;cm_id=&amp;pm_id="
														title="假一赔三" target="_blank"> <span
															class="tb-brand tb-brand-jyps"> <i class="tb-icon"></i>
														</span>
													</a> <a
														href="//www.taobao.com/go/act/315/xfzbz_zpbz.php?ad_id=&amp;am_id=130011830709c0515500&amp;cm_id=&amp;pm_id="
														title="正品保证" target="_blank"> <span
															class="tb-brand tb-brand-zpbz"> <i class="tb-icon"></i>
														</span>
													</a>




													</span>






												</div></td>

											<td class="price" title="45.00"><i class="special-num">45.00</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>



											<td class="item-operate"><a
												class="J_MakePoint refund-status blue-status refund-icon-money"
												target="_blank"
												href="//tradearchive.taobao.com/trade/itemlist/common/refunds_and_rebates.htm?bizType=200&amp;bizOrderId=1011094913848843"
												data-point-url="//gm.mmstat.com/listbought.1.43"> 查看退款 </a></td>






											<td class="amount" rowspan="1">






												<p>
													<em class="real-price special-num"> 27.00 </em>
												</p>

												<p class="post-type"></p>


												<p>
													(含运费：<i class="special-num">0.00</i> )
												</p>








											</td>


											<td class="trade-status" rowspan="1"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1011094913848843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.12"
												class="J_MakePoint status"> 交易关闭 </a> <span> <a
													href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1011094913848843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span></td>

											<td class="trade-operate" rowspan=" 1 "></td>
										</tr>








									</tbody>




									<tbody data-isarchive="true" data-orderid="997276735048843"
										data-status="TRADE_FINISHED"
										class="mainOrder997276735048843  success-order">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb997276735048843" name="biz_order_id"
														value="997276735048843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-03-14 09:30">2015-03-14</span>
													<span class="number last-item">订单号：<em>997276735048843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a target="_blank"
												class="shopname J_MakePoint" title="久久爱商城  成人用品"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=2421820598"
												data-point-url="//gm.mmstat.com/listbought.1.21"> 久久爱商城
													... </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="日后再说好不好" data-tnick="日后再说好不好"
												data-display="inline"
												data-item="$bizOrder.itemID:997276735048843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													class="ww-inline ww-offline"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=日后再说好不好"
													target="_blank"><span>旺旺离线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;44131349892&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="997276735048843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=997276735048843&amp;isArchive=true"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=997276735048843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=true&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_997276735048843"
												id="payOrderId_997276735048843" value="997276735048843"
												type="hidden"> <input
												name="tradeStatus_997276735048843"
												id="tradeStatus_997276735048843" value="TRADE_FINISHED"
												type="hidden"> <input name="sellerId"
												value="2421820598" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_997276735048843"
												id="tradeStatus_997276735048843" value="TRADE_FINISHED"
												type="hidden">
											</td>
										</tr>


										<tr id="item997276735048843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//item.taobao.com/item.htm?id=44131349892&amp;_u=e23k9ao42b24"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i3/TB1ZYF8HpXXXXc.XFXXXXXXXXXX_!!2-item_pic.png_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//item.taobao.com/item.htm?id=44131349892&amp;_u=e23k9ao42b24"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6">
															xunlei迅雷会员vip账号12h 一人一号0.01高速下载离线云播白金6h </a> <a
															href="//tradearchive.taobao.com/trade/detail/tradeSnap.htm?tradeID=997276735048843"
															target="_blank" class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.7">[交易快照]</a>
													</p>




													<div class="spec" title=""></div>



													<span class="good-icons"> <a title=""
														href="http://trade.taobao.com/trade/security/security_card.htm?bizOrderId=997276735048843"
														target="_blank" style="vertical-align: middle;"> <img
															src="//img.alicdn.com/tps/i2/T1S4ysXh8pXXXXXXXX-52-16.png">

													</a>


													</span>






												</div></td>

											<td class="price" title="0.01"><i class="special-num">0.01</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>



											<td class="item-operate"><a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden"></td>






											<td class="amount" rowspan="1">






												<p>
													<em class="real-price special-num"> 0.01 </em>
												</p>

												<p class="post-type"></p>


												<p>
													(含运费：<i class="special-num">0.00</i> )
												</p> <a title="手机订单"
												href="http://www.taobao.com/m?sprefer=symj28"
												target="_blank"> <img
													src="//img.alicdn.com/tps/i1/T1xRBqXdNAXXXXXXXX-46-16.png">
											</a>

											</td>


											<td class="trade-status" rowspan="1"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=997276735048843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.11"
												class="J_MakePoint status"> 交易成功 </a> <span> <a
													href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=997276735048843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span>













												<div class="remark-status">
													<a
														href="//rate.taobao.com/RateDetailBuyer.htm?parentTradeId=997276735048843"
														target="_blank"> 双方已评 </a>
												</div></td>

											<td class="trade-operate" rowspan=" 1 "><a
												href="//rate.taobao.com/append_rate.htm?biz_order_id=997276735048843&amp;is_archive=true"
												target="_blank" class="J_Rate J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.1.6">追加评论</a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="true" data-orderid="992050905898843"
										data-status="TRADE_FINISHED"
										class="mainOrder992050905898843  success-order">

										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb992050905898843" name="biz_order_id"
														value="992050905898843" disabled="disabled"
														type="checkbox">
													</span> <span class="dealtime" title="2015-03-08 17:40">2015-03-08</span>
													<span class="number last-item">订单号：<em>992050905898843</em></span>
												</div>
											</td>
											<td class="column" colspan="2"><a target="_blank"
												class="shopname J_MakePoint" title="限时特卖 质量第一"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=180933456"
												data-point-url="//gm.mmstat.com/listbought.1.21"> 限时特卖
													质... </a></td>
											<td class="column"><span class="ww-light ww-large"
												data-nick="lmn1017" data-tnick="lmn1017"
												data-display="inline"
												data-item="$bizOrder.itemID:992050905898843"
												data-point-url="//gm.mmstat.com/listbought.1.13"><a
													class="ww-inline ww-offline"
													href="https://amos.alicdn.com/getcid.aw?v=3&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaochen世强5201&amp;uid=lmn1017"
													target="_blank"><span>旺旺离线</span></a></span></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;43632710544&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="992050905898843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a class="resale"
														href="//sell.2.taobao.com/publish/outer_site_resell.htm?biz_order_id=992050905898843&amp;is_archive=true"
														target="_blank" title="转卖"> 转卖 </a> <a
														class=" memo J_MakePoint"
														data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=992050905898843&amp;isArchive=true"
														title="编辑标记信息，仅自己可见"
														href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=992050905898843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=true&amp;logisticsService=&amp;visibility=true"
														data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a>
													<a class="J_DelOrder J_MakePoint del"
														data-action="delOrder"
														data-point-url="//gm.mmstat.com/listbought.1.1"
														href="javascript:void(0)" title="删除">删除</a>
												</div> <input name="payOrderId_992050905898843"
												id="payOrderId_992050905898843" value="992050905898843"
												type="hidden"> <input
												name="tradeStatus_992050905898843"
												id="tradeStatus_992050905898843" value="TRADE_FINISHED"
												type="hidden"> <input name="sellerId"
												value="180933456" type="hidden"> <input
												name="buyerId" value="2269424388" type="hidden"> <input
												name="tradeStatus_992050905898843"
												id="tradeStatus_992050905898843" value="TRADE_FINISHED"
												type="hidden">
											</td>
										</tr>


										<tr id="item992050905898843"
											class="order-bd 
    last     order-last">
											<td class="baobei"><a target="_blank"  
												title="查看宝贝详情"
												href="//item.taobao.com/item.htm?id=43632710544&amp;_u=e23k9ao49824"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情"
													src="//img.alicdn.com/bao/uploaded/i1/180933456/TB2jfz4bFXXXXb8XXXXXXXXXXXX_!!180933456.jpg_80x80.jpg ">
											</a>

												<div class="desc">

													<p class="baobei-name">
														<a target="_blank"
															href="//item.taobao.com/item.htm?id=43632710544&amp;_u=e23k9ao49824"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6">
															春夏MAX全掌气垫跑步鞋休闲男女鞋透气网布慢跑鞋飞线彩虹运动鞋 </a> <a
															href="//tradearchive.taobao.com/trade/detail/tradeSnap.htm?tradeID=992050905898843"
															target="_blank" class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.7">[交易快照]</a>
													</p>




													<div class="spec" title="">
														<span>颜色分类: 黑橘荧光绿 男</span><span>鞋码: 42</span>




													</div>



													<span class="good-icons"> <a title=""
														href="http://trade.taobao.com/trade/security/security_card.htm?bizOrderId=992050905898843"
														target="_blank" style="vertical-align: middle;"> <img
															src="//img.alicdn.com/tps/i2/T1S4ysXh8pXXXXXXXX-52-16.png">

													</a>


													</span>
												</div></td>

											<td class="price" title="699.00"><i class="special-num">699.00</i>
											</td>

											<td class="quantity" title="1"><i class="special-num">1</i>
											</td>

											<td class="item-operate"><a href="javascript:;"
												class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
												title="" target="_blank"
												data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a>
												<input id="pioneerRulesType" value="" type="hidden"></td>

											<td class="amount" rowspan="1">
												<p>
													<em class="real-price special-num"> 195.00 </em>
												</p>

												<p class="post-type"></p>


												<p>
													(含运费：<i class="special-num">10.00</i> )
												</p>

											</td>


											<td class="trade-status" rowspan="1"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank"
												data-point-url="//gm.mmstat.com/listbought.2.11"
												class="J_MakePoint status"> 交易成功 </a> <span> <a
													href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
													target="_blank" class="detail-link J_MakePoint"
													data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情
												</a>

											</span>

												<div class="remark-status">
													<a
														href="//rate.taobao.com/RateDetailBuyer.htm?parentTradeId=992050905898843"
														target="_blank"> 双方已评 </a>
												</div></td>

											<td class="trade-operate" rowspan=" 1 "><a
												href="//rate.taobao.com/append_rate.htm?biz_order_id=992050905898843&amp;is_archive=true"
												target="_blank" class="J_Rate J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.1.6">追加评论</a></td>
										</tr>
									</tbody>
									<tfoot>
										<tr class="sep-row">
											<td colspan="7"></td>
										</tr>
										<tr class="toolbar toolbar-bottom">
											<td colspan="7">
												<div class="operates">
													<label><input class="J_AllSelector all-selector"
														type="checkbox">全选</label>
												</div>
												<div class="paging-box paging-full" id="J_trade_pagenation">
													<div class="row-fluid">
														<div class="span12">
															<div id="##" class="##">Showing 1 to 10 of 32
																entries</div>
														</div>
														<div
															class="dataTables_paginate paging_bootstrap pagination">
															<ul>
																<li class="prev disabled"><a href="#">←
																		Previous</a></li>
																<li class="active"><a href="#">1</a></li>
																<li><a href="#">2</a></li>
																<li><a href="#">3</a></li>
																<li><a href="#">4</a></li>
																<li class="next"><a href="#">Next → </a></li>
															</ul>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</tfoot>

								</table>

							</form>
						</div>
						<!--end bought-list-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/row-->
</e:override>

<%@include file="/merchant/main.jsp"%>