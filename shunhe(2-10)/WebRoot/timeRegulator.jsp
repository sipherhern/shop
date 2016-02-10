<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="panel-fit">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <link rel="stylesheet" href="./css/treecss/demo.css" type="text/css">
		<link rel="stylesheet" href="./css/treecss/zTreeStyle/zTreeStyle.css" type="text/css">
		<script type="text/javascript" src="./js/treejs/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="./js/treejs/jquery.ztree.core-3.5.js"></script>
		<!--  <script type="text/javascript" src="../../../js/jquery.ztree.excheck-3.5.js"></script>
	    <script type="text/javascript" src="../../../js/jquery.ztree.exedit-3.5.js"></script>-->
		<script type="text/javascript">
				
				var setting = {
					data : {
						key : {
							title : "t"
						},
						simpleData : {
							enable : true
						}
					},
					callback : {
						beforeClick : beforeClick,
						onClick : onClick
					}
				};

				var zNodes =[
				 			{ id:1, pId:0, name:"赣州开发区"},
				 			{ id:11, pId:1, name:"1-锦江国际酒店"},
				 			{ id:12,  pId:1,name:"2-华南坚路"},
				 			{ id:2, pId:0, name:"江苏万显兵的单"},
				 			{ id:21, pId:2, name:"3-3"},
				 			{ id:22, pId:2, name:"4-4"},
				 			{ id:23, pId:2, name:"5-5"},
				 			{ id:23, pId:2, name:"6-6"},
				 			{ id:23, pId:2, name:"7-7"},
				 			{ id:23, pId:2, name:"8-8"},
				 			{ id:23, pId:2, name:"9-9"},
				 			{ id:23, pId:2, name:"10-10"},
				 			{ id:3, pId:0, name:"龙岩兴源灯饰" },
				 			{ id:31, pId:3, name:"13-13"},
				 			{ id:32, pId:3, name:"14-14"},
				 			{ id:33, pId:3, name:"15-15"}
				 		];

				var log, className = "dark";
				function beforeClick(treeId, treeNode, clickFlag) {
					className = (className === "dark" ? "" : "dark");
					showLog("[ " + getTime() + " beforeClick ]&nbsp;&nbsp;"
							+ treeNode.name);
					return (treeNode.click != false);
				}
				function onClick(event, treeId, treeNode, clickFlag) {
					showLog("[ "
							+ getTime()
							+ " onClick ]&nbsp;&nbsp;clickFlag = "
							+ clickFlag
							+ " ("
							+ (clickFlag === 1 ? "普通选中"
									: (clickFlag === 0 ? "<b>取消选中</b>"
											: "<b>追加选中</b>")) + ")");
				}
				function showLog(str) {
					if (!log)
						log = $("#log");
					log.append("<li class='"+className+"'>" + str + "</li>");
					if (log.children("li").length > 8) {
						log.get(0).removeChild(log.children("li")[0]);
					}
				}
				function getTime() {
					var now = new Date(), h = now.getHours(), m = now
							.getMinutes(), s = now.getSeconds();
					return (h + ":" + m + ":" + s);
				}
				

				$(document).ready(function() {
					$.fn.zTree.init($("#treeDemo"), setting, zNodes);
				});
				
				
			</script>
			<title>时段稳压</title>
			<link rel="stylesheet" type="text/css" href="./css/Lightset.css"
				media="all">
</head>
<body class="panel-noscroll">
	<form style="width: 1184px; height: 544px;" method="post" id="form1"
		class="easyui-layout layout" fit="true">
		<div class="aspNetHidden">
			<input name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPDwULLTExMzAzNTc0OTRkZFIrg/MbQPuBP3wEqHXagY+5E6C0/5bafMo5oO+nwk28"
				type="hidden">
		</div>


		<div style="left: 0px; top: 0px; width: 172px;"
			class="panel layout-panel layout-panel-west">
			<div style="width: 172px;" class="panel-header">
				<div class="panel-title panel-with-icon">设备查询</div>
				<div class="panel-icon icon-standard-transmit-blue"></div>
				<div class="panel-tool">
					<a style="display: none;" class="panel-tool-collapse"
						href="javascript:void(0)"></a><a class="layout-button-left"
						href="javascript:void(0)"></a>
				</div>
			</div>
			<div class="panel-body layout-body panel-noscroll" region="west"
				style="width: 172px; height: 516px;" title=""
				iconcls="icon-standard-transmit-blue">
				<div style="display: block; width: 170px;" class="panel">
					<div style="width: 170px; height: 515px;" title="" id="search"
						class="easyui-panel panel-body panel-body-noheader panel-body-noborder"
						fit="true" border="false">
						<table style="width: 90%; margin: 10px 5px;" cellpadding="0"
							cellspacing="0">
							<tbody>
								<tr>
									<td><span>设备分组:</span> <select comboname="grougType"
										style="display: none;" id="grougType"
										class="easyui-combobox combobox-f combo-f">
											<option value="区域分组">区域分组</option>
											<option value="电话分组">电话分组</option>
											<option value="自定义分组">自定义分组</option>
									</select><span style="width: 87px; height: 22px;" class="combo"><input
											value="区域分组" readonly="readonly" title=""
											data-original-title=""
											style="width: 67px; height: 20px; line-height: 20px; cursor: pointer;"
											class="combo-text validatebox-text" autocomplete="off"
											type="text"><span><span style="height: 20px;"
													class="combo-arrow"></span></span><input value="区域分组"
												name="grougType" class="combo-value" type="hidden"></span>&nbsp;&nbsp;
										<p>
											设备列表:&nbsp;&nbsp;(共计<span id="d-count" style="color: red;">2</span>)
										</p>
										<p>
											<ul id="treeDemo" class="ztree"></ul></td>
								</tr>
								<tr>
									<td style="padding: 10px 0px;">
										<p>
											<a group="" href="javascript:void(0)" id="refresh-device"
												class="easyui-linkbutton l-btn l-btn-plain l-btn-disabled l-btn-plain-disabled"
												iconcls="icon-standard-arrow-refresh" plain="true"><span
												class="l-btn-left"><span
													class="l-btn-text icon-standard-arrow-refresh l-btn-icon-left">停止刷新</span></span></a>
										</p>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div style="left: 171px; top: 0px; width: 1013px;"
			class="panel layout-panel layout-panel-center">
			<div style="width: 1013px; height: 544px;"
				class="panel-body panel-body-noheader panel-body-noborder layout-body panel-noscroll"
				title="" region="center" border="false" id="center">
				<div style="display: block; width: auto;" class="panel">
					<div style="width: 1013px;" class="panel-header">
						<div class="panel-title panel-with-icon">时段稳压</div>
						<div class="panel-icon icon-standard-table-gear"></div>
						<div class="panel-tool">
							<a class="panel-tool-collapse" href="javascript:void(0)"></a>
						</div>
					</div>
					<div id="zd" title="" data-options="closable:false"
						style="margin-bottom: 5px; width: 1013px; height: auto;"
						plain="true" collapsible="true" class="easyui-panel panel-body"
						iconcls="icon-standard-table-gear">
						<table
							class="table table-striped table-bordered table-hover table-condensed">
							<tbody>
								<tr>
									<th>时段稳压</th>
									<th>开始时间</th>
									<th>结束时间</th>
									<th>稳压值</th>
									<th>操作</th>
								</tr>
								<tr id="tr01">
									<td>1</td>
									<td><input type="time" /></td>
									<td><input type="time" /></td>
									<td><input type="number" /></td>						
								</tr>
								<tr id="tr02">
									<td>2</td>
									<td><input type="time" /></td>
									<td><input type="time" /></td>
									<td><input type="number" /></td>
								</tr>
								<tr id="tr03">
									<td>3</td>
									<td><input type="time" /></td>
									<td><input type="time" /></td>
									<td><input type="number" /></td>
									<td rowspan=6>
										<input class="btn btn-mini btn-primary" id="auto-refresh" disabled="disabled" value="停止刷新" type="button"></br></br> 
										<input class="btn btn-mini btn-info" value="实时查询" id="timing-refresh" type="button"></br></br> 	
										<input class="btn btn-mini btn-danger" id="btnset" value="　设　置　" type="button" >
									</td>
								</tr>
								<tr id="tr04">
									<td>4</td>
									<td><input type="time" /></td>
									<td><input type="time" /></td>
									<td><input type="number" /></td>
								</tr>
								<tr id="tr05">
									<td>5</td>
									<td><input type="time" /></td>
									<td><input type="time" /></td>
									<td><input type="number" /></td>
								</tr>
								<tr id="tr06">
									<td>6</td>
									<td><input type="time" /></td>
									<td><input type="time" /></td>
									<td><input type="number" /></td>
								</tr>
								<tr id="tr07">
									<td>7</td>
									<td><input type="time" /></td>
									<td><input type="time" /></td>
									<td><input type="number" /></td>
								</tr>
								<tr id="tr08">
									<td>8</td>
									<td><input type="time" /></td>
									<td><input type="time" /></td>
									<td><input type="number" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div style="display: block; width: 1013px;" class="panel">
					<div style="width: 1013px;" class="panel-header">
						<div class="panel-title panel-with-icon">执行结果</div>
						<div class="panel-icon icon-standard-table-gear"></div>
						<div class="panel-tool">
							<a class="panel-tool-collapse" href="javascript:void(0)"></a>
						</div>
					</div>
					<div style="width: 1013px; height: 516px;" title=""
						collapsible="true" fit="true" class="easyui-panel panel-body"
						iconcls="icon-standard-table-gear">
						<div id="show-result"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="layout-split-proxy-h"></div>
		<div class="layout-split-proxy-v"></div>
	</form>


	
</body>
</html>
