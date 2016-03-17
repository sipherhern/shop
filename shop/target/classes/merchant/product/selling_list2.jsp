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
								<table class="table table-striped table-bordered">
									<colgroup>
										<col class="baobei">
										<col class="price">
										<col class="quantity">
										<col class="sellTotall">
										<col class="starttime">
										<col class="productstate">
										<col class="operate">
									</colgroup>
									<thead>
										<tr class="col-name">
											<th class="baobei">宝贝名称</th>
											<th class="price">单价(元)</th>
											<th class="quantity">库存</th>
											<th class="totallnum">总销量</th>
											<th class="starttime">创建时间</th>
											<th class="product-status">商品状态</th>
											<th class="operate">操作</th>
										</tr>
										<tr class="toolbar toolbar-top">
											<td colspan="7"><label class="control-label"><input
													id="All" type="checkbox">全选</label></td>
										</tr>
									</thead>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
										</tr>
									</tbody>
									<tbody data-isarchive="false" data-orderid="1146901796648843"
										data-status="TRADE_FINISHED"
										class="mainOrder1146901796648843  success-order xcard">

										<tr class="order-hd">
											<td class="first">
												<div class="summary">
													<span> <input class="J_Selector selector"
														id="cb1146901796648843" name="biz_order_id"
														value="1146901796648843" type="checkbox"></span> <span
														class="number last-item">商品编号 ： <em>1146901796648843</em></span>
												</div>
											</td>
											<td class="column" colspan="4"><a target="_blank"
												class="shopname J_MakePoint" title="帝壁修身型男潮店"
												href="//store.taobao.com/shop/view_shop.htm?user_number_id=252211998"
												data-point-url="//gm.mmstat.com/listbought.1.21">
													帝壁修身型... </a></td>
											<td class="last" colspan="3">
												<div class="J_bought_operates operates">

													<a class="glyphicons share" href="#"
														data-param="{&quot;type&quot;:&quot;item&quot;,&quot;key&quot;:&quot;520085310210&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;, &quot;client_id&quot;: &quot;180218&quot;}"
														data-name="1146901796648843"
														data-point-url="//gm.mmstat.com/listbought.1.14"
														title="分享"><i></i>分享 </a> <a
														class="J_DelOrder J_MakePoint del" data-action="delOrder"
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
											<td class="totallnum" title="1"><i class="special-num">100</i>
											</td>
											<td class="starttime">
												<p>
													<br>2013-12-12<br>19:02<br>
												</p>
											</td>
											<td class="product-status" rowspan="1"><p>审核中</p> <br>
												<p>审核失败</p> <br>
												<p>出售中</p></td>

											<td class="operate" rowspan="2"><a
												href="//tradearchive.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=992050905898843"
												target="_blank" class="#####"
												data-point-url="//gm.mmstat.com/listbought.1.29"> 编辑宝贝 </a></td>
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