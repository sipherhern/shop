<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="layout.tld" prefix="e"%>

<e:override name="title">股东汇 | 管理平台</e:override>
<e:override name="more_style">
	<style>
.tablebase .search-wrap .begin-date, .tablebase .search-wrap .end-date {
	width: 135px;
}

.tablebase .search-wrap .search-btn {
	padding: 0px 20px;
	cursor: pointer;
}

.calendar-input-wrap .calendar-start-icon, .calendar-input-wrap .calendar-end-icon
	{
	padding-right: 0;
	background: none;
}
</style>
</e:override>

<e:override name="content_right">
	<ul class="breadcrumb">
		<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
			class="icon-angle-right"></i></li>
		<li><a href="#">Logis</a></li>
	</ul>

	<div class="row-fluid">
		<div class="box span12">
			<div class="box-content">

				<div class="rights-list-wrap">
					<div class="tablebase">
						<div class="table-hd">
							<h2>售后服务管理</h2>
						</div>
						<form id="rightsListQueryForm" name="rightsListQueryForm"
							method="post">
							<input name='_tb_token_' type='hidden' value='CVe5Zp0BWL5E89A'>
							<input type="hidden" name="searchFlag" id="searchFlag" value="1" />
							<input type="hidden" name="currentPage" id="currentPage"
								value="1" />
							<div class="table-tabs">
								<a href="#">股东汇售后服务记录</a>
							</div>
							<hr>
							<div id="J_CaseSearchWrap" class="table-bd search-wrap">
								<table>
									<colgroup>
										<col class="title" />
										<col class="info" style="width: 380px;" />
										<col class="title" />
										<col class="info" />
										<col class="title" />
										<col class="info" />
									</colgroup>
									<tbody>
										<tr>
											<td class="title"><label>订单编号：</label></td>
											<td class="info"><input type="text" name="parentOrderId"
												value="" maxlength="20" /></td>
											<td class="title"><label>售后编号：</label></td>
											<td class="info"><input type="text" name="rightsId"
												value="" maxlength="20" /></td>
											<td class="title"><label>售后要求：</label></td>
											<td class="info"><select name="rightsRequirements">
													<option value="-1">请选择</option>
													<option value="1">要求退款</option>
													<option value="4">要求换货</option>
													<option value="5">要求维修</option>
													<option value="9">要求退一赔一</option>
													<option value="3">需要退货退款</option>
													<option value="6">已收到货要求赔偿</option>
													<option value="8">已经退货要求退款</option>
													<option value="2">不退货部分退款</option>

											</select></td>
											<td class="title">&nbsp;</td>
											<td class="info">&nbsp;</td>
										</tr>
										<tr>
											<td class="title"><label>申请时间：</label></td>
											<td class="info"><input id="J_BeginDate"
												class="J_BeginDate begin-date" type="text" name="beginDate"
												value="2015-07-16" /> 到 <input id="J_EndDate"
												class="J_EndDate end-date" type="text" name="endDate"
												value="2015-08-15" /></td>
											<td class="title"><label>售后状态：</label></td>
											<td class="info"><select name="rightsBizStatus">
													<option value="-1">请选择</option>
													<option value="20">举证中</option>
													<option value="15">维权成立</option>
													<option value="16">维权不成立</option>
													<option value="17">维权撤销</option>
													<option value="14">股东汇已经介入</option>
													<option value="1">等待卖家处理</option>
													<option value="2">等待买家处理</option>
													<option value="21">客服介入举证中</option>
													<option value="22">等待卖家确认退货地址</option>
													<option value="23">等待买家退货</option>
													<option value="24">等待卖家收货</option>
													<option value="25">卖家拒绝收货</option>
													<option value="26">等待买家确认完成</option>
													<option value="27">等待卖家处理举证</option>
											</select></td>
											<td class="title"></td>
											<td class="info search-btn-wrap"><input type="submit"
												class="small-long-btn search-btn" onclick="doSearch()"
												id="searchBtn" value="搜索" /></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="table-bd list-wrap">
								<hr>
								<table id="table2">
									<tbody>
										<tr>
											<td>
												<div class="msg24 not-seller tb-tab-panel">
													<div class="attention naked">没有售后维权记录。</div>
													<br> <br> <br> <br> <br> <br>
													<br> <br> <br> <br>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
								<hr>
							</div>
						</form>
					</div>
				</div>


				<script type="text/javascript"
					src="//g.alicdn.com/tbc/webww/1.1.5/webww-min.js"></script>
				<script>
					KISSY.use('kg/calendar/2.0.2/index', function(S, Calendar) {
						var $ = S.all;

						var maxInterval = 60;

						var calendar = new Calendar({
							// afterDays       : maxInterval,
							triggerNode : '#J_BeginDate',
							finalTriggerNode : '#J_EndDate',
							isSameDate : true
						});

						calendar.on('show', function(e) {
							switch (e.node.attr('id')) {
							case 'J_BeginDate':
								this.set('maxDate', new Date);
								this.render();
								break;
							case 'J_EndDate':
								this.set('minDate', this.get('startDate')
										|| new Date);
								this.set('maxDate', new Date);
								this.render();
								break;
							}
						});
					});
				</script>
			</div>
		</div>
	</div>
</e:override>

<%@include file="/merchant/main.jsp"%>