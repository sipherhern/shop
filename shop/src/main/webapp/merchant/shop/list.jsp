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
			<div class="box-header" data-original-title>
				<h2>
					<i class="halflings-icon user"></i><span class="break"></span>Members
				</h2>
			</div>
			<div class="box-content">
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
										value="1146901796648843" disabled="disabled" type="checkbox">
									</span> <span class="dealtime" title="2015-07-10 17:34">2015-07-10</span>
									<span class="number last-item">订单号：<em>1146901796648843</em></span>
								</div>
							</td>
							<td class="column" colspan="2"><a target="_blank"
								class="shopname J_MakePoint" title="帝壁修身型男潮店"
								href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
								data-point-url="//gm.mmstat.com/listbought.1.21"> 帝壁修身型... </a></td>
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

									<a class="J_ShareSNS share J_placeholder_buddy" href="#"
										data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
										data-name="1146901796648843"
										data-point-url="//gm.mmstat.com/listbought.1.14" title="分享">分享
									</a> <a class="resale"
										href="//sell.2.taobao.com/publish/outer_site_resell.htm?biz_order_id=1146901796648843&amp;is_archive=false"
										target="_blank" title="转卖"> 转卖 </a> <a
										class=" memo J_MakePoint"
										data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1146901796648843&amp;isArchive=false"
										title="编辑标记信息，仅自己可见"
										href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1146901796648843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=false&amp;logisticsService=&amp;visibility=true"
										data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a> <a
										class="J_DelOrder J_MakePoint del" data-action="delOrder"
										data-point-url="//gm.mmstat.com/listbought.1.1"
										href="javascript:void(0)" title="删除">删除</a>
								</div> <input name="payOrderId_1146901796648843"
								id="payOrderId_1146901796648843" value="1146901796648843"
								type="hidden"> <input
								name="tradeStatus_1146901796648843"
								id="tradeStatus_1146901796648843" value="TRADE_FINISHED"
								type="hidden"> <input name="sellerId" value="252211998"
								type="hidden"> <input name="buyerId" value="2269424388"
								type="hidden"> <input
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
								data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a> <input
								id="pioneerRulesType" value="" type="hidden"> <a
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
								target="_blank" data-point-url="//gm.mmstat.com/listbought.2.11"
								class="J_MakePoint status"> 交易成功 </a> <span> <a
									href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1146901796648843"
									target="_blank" class="detail-link J_MakePoint"
									data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情 </a>
							</span> <a
								href="//wuliu.taobao.com/user/order_detail_new.htm?trade_id=1146901796648843&amp;seller_id=252211998"
								class="view-logistics J_MakePoint J_Logistics " target="_blank"
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
										value="1089471239368843" disabled="disabled" type="checkbox">
									</span> <span class="dealtime" title="2015-06-20 16:20">2015-06-20</span>
									<span class="number last-item">订单号：<em>1089471239368843</em></span>
								</div>
							</td>
							<td class="column" colspan="2"><a target="_blank"
								class="shopname J_MakePoint" title="迅雷12小时白金会员"
								href="//store.taobao.com/shop/view_shop.htm?user_number_id=688442528"
								data-point-url="//gm.mmstat.com/listbought.1.21"> 迅雷12小时...
							</a></td>
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

									<a class="J_ShareSNS share J_placeholder_buddy" href="#"
										data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;44462298405&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
										data-name="1089471239368843"
										data-point-url="//gm.mmstat.com/listbought.1.14" title="分享">分享
									</a> <a class=" memo J_MakePoint"
										data-url="/trade/json/memoInfo.htm?user_type=buyer&amp;orderid=1089471239368843&amp;isArchive=false"
										title="编辑标记信息，仅自己可见"
										href="//trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=1089471239368843&amp;buyerId=2269424388&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=false&amp;logisticsService=&amp;visibility=true"
										data-point-url="//gm.mmstat.com/listbought.1.15"> 标记 </a> <a
										class="J_DelOrder J_MakePoint del" data-action="delOrder"
										data-point-url="//gm.mmstat.com/listbought.1.1"
										href="javascript:void(0)" title="删除">删除</a>
								</div> <input name="payOrderId_1089471239368843"
								id="payOrderId_1089471239368843" value="1089471239368843"
								type="hidden"> <input
								name="tradeStatus_1089471239368843"
								id="tradeStatus_1089471239368843" value="TRADE_FINISHED"
								type="hidden"> <input name="sellerId" value="688442528"
								type="hidden"> <input name="buyerId" value="2269424388"
								type="hidden"> <input
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
								data-point-url="//gm.mmstat.com/listbought.1.33"> 投诉卖家 </a> <input
								id="pioneerRulesType" value="" type="hidden"> <a
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
								</p> <a title="手机订单" href="http://www.taobao.com/m?sprefer=symj28"
								target="_blank"> <img
									src="//img.alicdn.com/tps/i1/T1xRBqXdNAXXXXXXXX-46-16.png">
							</a>
							</td>
							<td class="trade-status td-last" rowspan="2"><a
								href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1089471239368843"
								target="_blank" data-point-url="//gm.mmstat.com/listbought.2.11"
								class="J_MakePoint status"> 交易成功 </a> <span> <a
									href="//trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=1089471239368843"
									target="_blank" class="detail-link J_MakePoint"
									data-point-url="//gm.mmstat.com/listbought.1.29"> 订单详情 </a>

							</span> <a
								href="//wuliu.taobao.com/user/order_detail_new.htm?trade_id=1089471239368843&amp;seller_id=688442528"
								class="view-logistics J_MakePoint J_Logistics " target="_blank"
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

				</table>
			</div>
		</div>
		<!--/span-->
	</div>
	<!--/.fluid-container-->
</e:override>

<%@include file="/merchant/main.jsp"%>