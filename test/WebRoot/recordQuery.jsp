<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/manhuaDate.1.0.css" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/manhuaDate.1.0.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script language="javascript">
	$(function() {
		//导航切换
		$(".imglist li").click(function() {
			$(".imglist li.selected").removeClass("selected")
			$(this).addClass("selected");
		});
	});
</script>

<script type="text/javascript">
	$(function() {
		$("input.mh_date").manhuaDate({
			Event : "click",//可选				       
			Left : 0,//弹出时间停靠的左边位置
			Top : -16,//弹出时间停靠的顶部边位置
			fuhao : "-",//日期连接符默认为-
			isTime : false,//是否开启时间值默认为false
			beginY : 1970,//年份的开始默认为1970
			endY : 2099
		//年份的结束默认为2099
		});
	});
</script>
</head>
<body style="overflow-x: scroll;">

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">图片列表</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">
			<form action="RecordQuery.action" method="post">
				<div>
					<a>起始日期:</a>&nbsp;<input type="text" class="mh_date"
						name="startDate" value="${startDate}" readonly="true" />&nbsp; <a>结束日期:</a>&nbsp;<input
						type="text" class="mh_date" name="endDate" value="${endDate}"
						readonly="true" />&nbsp; <input type="submit" value="查询" />
					<ul class="toolbar1">
						<li class="click"><span><img src="images/magglass.gif" />
						</span>查询</li>
					</ul>
				</div>
			</form>

		</div>

		<table class="imgtable">

			<thead>
				<tr>
					<th>设备地址</th>
					<th>记录添加时间</th>
					<th>A项输入电压</th>
					<th>B项输入电压</th>
					<th>C项输入电压</th>
					<th>A项输入电流</th>
					<th>B项输入电流</th>
					<th>C项输入电流</th>
					<th>A项输出电压</th>
					<th>B项输出电压</th>
					<th>C项输出电压</th>
					<th>A项有功功率</th>
					<th>B项有功功率</th>
					<th>C项有功功率</th>
				</tr>
			</thead>

			<tbody>

				<s:iterator value="pageBean.list">
					<tr>
						<td><s:property value="deviceAddress" />
						</td>
						<td><s:property value="deviceCreatedTime" />
						</td>
						<td><s:property value="ainputVoltage" />
						</td>
						<td><s:property value="binputVoltage" />
						</td>
						<td><s:property value="cinputVoltage" />
						</td>
						<td><s:property value="ainputCurrent" />
						</td>
						<td><s:property value="binputCurrent" />
						</td>
						<td><s:property value="cinputCurrent" />
						</td>
						<td><s:property value="aoutputVoltage" />
						</td>
						<td><s:property value="boutputVoltage" />
						</td>
						<td><s:property value="coutputVoltage" />
						</td>
						<td><s:property value="areactivePower" />
						</td>
						<td><s:property value="breactivePower" />
						</td>
						<td><s:property value="creactivePower" />
						</td>
					</tr>
				</s:iterator>

			</tbody>
		</table>

		<div class="pagin">
			<div class="message">
				共<i class="blue"><s:property value="pageBean.allRow" /> </i>条记录，
				当前显示第&nbsp;<i class="blue"><s:property
						value="pageBean.currentPage" />&nbsp;</i>页 共 <i class="blue"><s:property
						value="pageBean.totalPage" /> </i>页，
			</div>
			<ul class="paginList">
				<li class="paginItem"><a
					href="RecordQuery.action?page=${pageBean.currentPage - 1 > 0?pageBean.currentPage - 1:1}&startDate=${startDate}&endDate=${endDate}:page=1"><span
						class="pagepre"></span> </a></li>
				<li class="paginItem"><a
					href="RecordQuery.action?page=1&startDate=${startDate}&endDate=${endDate}">1</a>
				</li>
				<li class="paginItem current"><a
					href="RecordQuery.action?page=2&startDate=${startDate}&endDate=${endDate}">2</a>
				</li>
				<li class="paginItem"><a
					href="RecordQuery.action?page=3&startDate=${startDate}&endDate=${endDate}">3</a>
				</li>
				<li class="paginItem"><a
					href="RecordQuery.action?page=<s:property value="pageBean.totalPage"/>&startDate=${startDate}&endDate=${endDate}"><s:property
							value="pageBean.totalPage" /> </a></li>
				<li class="paginItem">
				<s:if test="%{pageBean.currentPage != pageBean.totalPage}">
				<a
					href="RecordQuery.action?page=<s:property value="%{pageBean.currentPage+1}"/>&startDate=${startDate}&endDate=${endDate}"><span
						class="pagenxt"></span> </a>
				</s:if>
				<s:else>
				<a
					href="RecordQuery.action?page=<s:property value="%{pageBean.totalPage}"/>&startDate=${startDate}&endDate=${endDate}"><span
						class="pagenxt"></span> </a>
				</s:else>
				</li>
				
			</ul>
		</div>


		<script type="text/javascript">
			$('.imgtable tbody tr:odd').addClass('odd');
		</script>
</body>

</html>
