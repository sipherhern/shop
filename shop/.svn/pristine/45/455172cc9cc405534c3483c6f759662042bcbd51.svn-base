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
					<li class="current"><a href="javascript:void(0);">我收到的举报 <i
							class="#">|</i></a></li>
					<li><a href="./reportIPostedList.htm?banner=1">我作出的举报 <span
							class="label label-important">1</span><i class="#">|</i></a></li>
				</ul>
				<hr>
				<form name="queryForm" id="queryForm"
					action="reportIReceivedList.htm" method="post">
					<input type="hidden" name="currentPage" value="1" /> <input
						type="hidden" name="banner" value="1" />
					<div class="item-list">

						<div class="item-list-count">
							<span class="item-list-stat">最近三个月共计：0</span> <span
								class="item-list-stat">处理中：0</span> <span class="item-list-stat">已结束：0</span>
							<span class="item-list-stat">取证中：0</span>
						</div>

						<div class="item-list-bd">
							<table id="post-accuse-list">
								<col class="item-list-col1" />
								<col class="item-list-col2" />
								<col class="item-list-col3" />
								<col class="item-list-col4" />
								<col class="item-list-col5" />
								<col class="item-list-col6" />
								<thead>
									<tr>
										<th>原始举报编号</th>
										<th>举报原因</th>
										<th>被举报人</th>
										<th>发起时间</th>
										<th><select id='processStatus' name='processStatus'
											onchange='changeProcessStatus();'>
												<option value='-1'>全部</option>
												<option value='1'>处理中</option>
												<option value='2'>小二取证</option>
												<option value='5'>已结束</option>
										</select> <script>
											function changeProcessStatus() {
												document.forms['queryForm']
														.submit();
											}
										</script></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								</tbody>
								<tbody class="act">
									<tr class="last-row">
										<td colspan="6"><script type="text/javascript">
											function changePage(currentPage) {
												var f = document
														.getElementById('queryForm');
												f.currentPage.value = currentPage;
												f.submit();
												return false;
											}
											function gotoPage() {
												var f = document
														.getElementById('queryForm');
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
												return str.replace(
														/(^\s*)|(\s*$)/g, "");
											}
											function IsInteger(varString) {
												return /^[0-9]+$/i
														.test(varString);
											}

											var current_page = "0";
											var max_page = "0";

											function validate(page) {
												page = trim(page);
												if (page == null || page == "") {
													alert("页号无效！");
													return false;
												}
												if (!IsInteger(page)) {
													alert("页号必须为正整数！");
													return false;
												}
												page = parseInt(page);
												if (page == current_page) {
													return false;
												}
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
											function setSelectOption(selectId,
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
							举报状态说明：<br /> 处理中:该举报股东汇已经介入处理。<br />
							取证中:小二在审核过程中无法直接判定，需要对举报对象进行进一步取证,如进行假货举报的购买鉴定等，该情况举报处理周期较长。<br />
							*举报不接受申诉，如对举报成立后被限权或者商品被处理等有异议，建议根据相应的违规处理情况申诉（违规处理后股东汇会以邮件，站内信，旺旺提醒等告知申诉方式）。
						</div>
					</div>
					<!-- end item-list -->
				</form>
			</div>
		</div>
	</div>
</e:override>

<%@include file="/merchant/main.jsp"%>
