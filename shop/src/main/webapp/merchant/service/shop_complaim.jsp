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
				<ul class="nav nav-pills nav-justified">
					<li><a href="#" onclick="changeRole(1)">我发起的投诉 <span
							class="label label-important">1</span><i class="#">|</i></a></li>
					<li><a href="#" onclick="changeRole(0)" class="current">我收到的投诉
							<span class="label label-important">1</span><i class="#">|</i>
					</a></li>
				</ul>

				<div class="rights-list-wrap">
					<div class="tablebase">
						<form id="rulesListQueryForm" name="rulesListQueryForm"
							method="post">
							<input name='_tb_token_' type='hidden' value='CVe5Zp0BWL5E89A'>
							<input type="hidden" name="currentPage" id="currentPage"
								value="1" /> <input type="hidden" name="type" id="type" /> <input
								type="hidden" name="searchFlag" id="searchFlag" value="0" />

							<div id="J_CaseSearchWrap" class="table-bd search-wrap">
								<table>
									<colgroup>
										<col class="title" />
										<col class="info" />
										<col class="title" />
										<col class="info" style="width: 200px;" />
									</colgroup>
									<tbody>
										<tr>
											<td class="title"><label>订单编号：</label></td>
											<td class="info"><input type="text" name="parentOrderId"
												value="" maxlength="20" /></td>
											<td class="title"><label>投诉编号：</label></td>
											<td class="info"><input type="text" name="caseId"
												value="" maxlength="20" /></td>
											<td class="title"><label>投诉原因：</label></td>
											<td class="info"><select name="rulesReasonId">
													<option value="-1">请选择</option>
													<option value="9342">恶意骚扰</option>
													<option value="9316">违背承诺(旧)</option>
													<option value="9322">延迟发货</option>
													<option value="400000001">未按约定时间发货</option>
													<option value="400000002">违反支付宝交易流程</option>
													<option value="400000003">拒绝使用信用卡付款</option>
													<option value="400000004">承诺的没做到</option>
													<option value="400000005">不跟我交易</option>
													<option value="400000006">未按成交价格进行交易</option>
											</select></td>
										</tr>
										<tr>
											<td class="title"><label>投诉状态：</label></td>
											<td class="info"><select name="rulesBizStatus">
													<option value="-1">请选择</option>
													<option value="1">等待卖家处理</option>
													<option value="2">等待买家处理</option>
													<option value="20">举证中</option>
													<option value="14">淘宝处理中</option>
													<option value="15">投诉成立</option>
													<option value="16">投诉不成立</option>
													<option value="17">投诉已撤销</option>
													<option value="18">投诉已完结</option>
											</select></td>
											<td class="title"><label>申请时间：</label></td>
											<td class="info"><input id="J_BeginDate"
												class="J_BeginDate begin-date" type="text" name="beginDate"
												value="2015-07-15" /> 到 <input id="J_EndDate"
												class="J_EndDate end-date" type="text" name="endDate"
												value="2015-08-15" /></td>
											<td colspan="2">
												<div></div>
											</td>
										</tr>
										<tr>
											<td class="title"></td>
											<td class="info search-btn-wrap"><input type="submit"
												class="small-long-btn search-btn" id="searchBtn"
												onclick="doSearch()" value="搜索" /></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="row-fluid">
								<div class="box span12">
									<div class="table-bd list-wrap">
										<table>
											<colgroup>
												<col class="id" />
												<col class="case-id" />
												<col class="ww" />
												<col class="reason" />
												<col class="status" />
												<col class="time" />
												<col class="ctrl" />
											</colgroup>
											<thead>
												<tr class="head-tr">
													<th>投诉编号</th>
													<th>订单编号</th>
													<th>投诉方</th>
													<th>投诉原因</th>
													<th>投诉状态</th>
													<th>申请时间</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
											</tbody>
											<tbody class="act">
												<tr class="last-row">
													<td colspan="7"><script type="text/javascript">
														function changePage(
																currentPage) {
															var f = document
																	.getElementById('rulesListQueryForm');
															f.currentPage.value = currentPage;
															f.submit();
															return false;
														}
														function gotoPage() {
															var f = document
																	.getElementById('rulesListQueryForm');
															var inputpage = f.pageNO.value;
															if (validate(inputpage)) {
																f.currentPage.value = inputpage;
																f.submit();
																return false;
															} else {
																return false;
															}
														}
														function trim(str) {
															return str
																	.replace(
																			/(^\s*)|(\s*$)/g,
																			"");
														}
														function IsInteger(
																varString) {
															return /^[0-9]+$/i
																	.test(varString);
														}
														var current_page = "0";
														var max_page = "0";
														function validate(page) {
															page = trim(page);
															if (page == null
																	|| page == "") {
																alert("页号无效！");
																return false;
															}
															if (!IsInteger(page)) {
																alert("页号必须为正整数！");
																return false;
															}
															page = parseInt(page);
															if (page == current_page)
																return false;
															if (page > max_page) {
																alert("页号超出最大页号！");
																return false;
															}
															if (page < 1) {
																alert("页号超出最小页号！");
																return false;
															}
															return true;
														}
														function setSelectOption(
																selectId,
																optionV) {
															var selObj = document
																	.getElementById(selectId);
															var oTarget = optionV;
															for (var i = 0; i < selObj.options.length; i++) {
																if (selObj.options[i].value == oTarget) {
																	selObj.options[i].selected = true;
																}
															}
														}
													</script>
														<div class="operations"></div></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>

				<script
					src="//assets.alicdn.com/apps/serviceone/page/rights-list/index.js?t=20120713.js"></script>
				<script>
					KISSY.use('calendar', function(S, RightsList) {
						var D = S.DOM, E = S.Event;
						var RightsList = RightsList || S.RightsList;
						var panel = D.get('#J_CaseSearchWrap')
						new RightsList({
							panel : panel,
							searchBeginDateCls : '.J_BeginDate',
							searchEndDateCls : '.J_EndDate'
						});
					});

					function changeRole(rolename) {
						var f = document.getElementById('rulesListQueryForm');
						f.type.value = rolename;
						f.submit();
						return false;
					}

					function doSearch() {
						var searchFlag = document.getElementById("searchFlag");
						searchFlag.value = "1";
					}
				</script>


			</div>
			<span class="mytaobao-rc-bt"><span></span></span>
		</div>
	</div>
	<!-- end mytaobao-panel -->

	<!-- end content -->

	<!--/.fluid-container-->
</e:override>

<%@include file="/merchant/main.jsp"%>