<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="panel-fit">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="./css/treecss/demo.css" type="text/css"/>
	<link rel="stylesheet" href="./css/treecss/zTreeStyle/zTreeStyle.css" type="text/css"/>
	<script type="text/javascript" src="./js/treejs/jquery-1.4.4.min.js" ></script>
	<script type="text/javascript" src="./js/treejs/jquery.ztree.core-3.5.js"></script>
	<script type="text/javascript">
			function dian(self) {
				var obj=document.getElementById("img"+self.id);
				t = document.getElementById(self.id);
				if (t.innerHTML == "关灯") {
					obj.src = "./images/light_nostate.png";
					t.innerHTML = "开灯";

				} else {
					t.innerHTML = "关灯";
					obj.src = "./images/light_state.png";
				}
	
			}
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
			
			function allSet(){
				obj = document.getElementsByName("lightImg");
				t = document.getElementsByName("btn");
				for(var i = 0;i < t.length; i++){
					if (t[i].innerHTML == "关灯") {
						obj[i].src = "./images/light_nostate.png";
						t[i].innerHTML = "开灯";

					} else {
						t[i].innerHTML = "关灯";
						obj[i].src = "./images/light_state.png";
					}
		        }
			}
			
			function getLightState(){
				var btnVal = document.getElementById("btnVal");
				var btns = document.getElementsByTagName("button");
				var lightState = new Array();
				for(var i = 0; i < btns.length; i++){ 
					var e = btns[i];
					lightState[i] = e.id+"："+e.innerHTML;
					btnVal.value = btnVal.value + lightState[i]+" ; ";					
				}
				document.getElementById('buttonVal').value = btnVal.value;
			}

			$(document).ready(function() {
				$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			});
			
			
		</script>
		<title>手动开关灯</title>
		<link rel="stylesheet" type="text/css" href="./css/Lightset.css" media="all" />
</head>
<body class="panel-noscroll">
	<form style="width: 1184px; height: 544px;" method="post" id="form1" class="easyui-layout layout" fit="true" action="lightSet.action" >
		<div class="aspNetHidden">
			<input name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTExMzAzNTc0OTRkZFIrg/MbQPuBP3wEqHXagY+5E6C0/5bafMo5oO+nwk28" type="hidden" />
		</div>


		<div style="left: 0px; top: 0px; width: 172px;" class="panel layout-panel layout-panel-west">
			<div style="width: 172px;" class="panel-header">
				<div class="panel-title panel-with-icon">设备查询</div>
				<div class="panel-icon icon-standard-transmit-blue"></div>
				<div class="panel-tool">
					<a style="display: none;" class="panel-tool-collapse" href="javascript:void(0)"></a>
					<a class="layout-button-left" href="javascript:void(0)"></a>
				</div>
			</div>
			<div class="panel-body layout-body panel-noscroll" region="west"
				style="width: 172px; height: 516px;" title="" iconcls="icon-standard-transmit-blue">
				<div style="display: block; width: 170px;" class="panel">
					<div style="width: 170px; height: 515px;" title="" id="search"
						class="easyui-panel panel-body panel-body-noheader panel-body-noborder"
						fit="true" border="false">
						<table style="width: 90%; margin: 10px 5px;" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td><span>设备分组:</span> 
										<select comboname="grougType"
										style="display: none;" id="grougType"
										class="easyui-combobox combobox-f combo-f">
											<option value="区域分组">区域分组</option>
											<option value="电话分组">电话分组</option>
											<option value="自定义分组">自定义分组</option>
										</select>
										<span style="width: 87px; height: 22px;" class="combo">
										<input value="区域分组" readonly="readonly" title="" data-original-title=""
											style="width: 67px; height: 20px; line-height: 20px; cursor: pointer;"
											class="combo-text validatebox-text" autocomplete="off"
											type="text" />
										
										<span style="height: 20px;" class="combo-arrow"></span>
										</span>
										<input value="区域分组" name="grougType" class="combo-value" type="hidden"/>&nbsp;&nbsp;
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
		
		

		<div style="left: 171px; top: 0px; width: 1013px;" class="panel layout-panel layout-panel-center">
			<div style="width: 1013px; height: 544px;" class="panel-body panel-body-noheader panel-body-noborder layout-body panel-noscroll"
				title="" region="center" border="false" id="center">
				<div style="display: block; width: auto;" class="panel">
					<div style="width: 1013px;" class="panel-header">
						<div class="panel-title panel-with-icon">开关灯状态</div>
						<div class="panel-icon icon-standard-table-gear"></div>
						<div class="panel-tool">
							<a class="panel-tool-collapse" href="javascript:void(0)"></a>
						</div>
					</div>
				<div id="zd" title="" data-options="closable:false" style="margin-bottom: 5px; width: 1013px; height: auto;"
						plain="true" collapsible="true" class="easyui-panel panel-body" iconcls="icon-standard-table-gear">
						
						<table
							class="table table-striped table-bordered table-hover table-condensed">
							<tbody>
								<tr>
									<th>8路支路输出</th>
									<th>开关灯状态</th>
									<th>开关灯设置</th>
								</tr>
								
								<tr id="tr01">
									<td>第1路输出</td>
									<td><img id="imgbtn01" name="lightImg" src="./images/light_nostate.png"></td>
									<td>
										<div>
											<button id="btn01" name="btn" type="button" onclick="dian(this)">开灯</button>
										</div>
									</td>
								</tr>
								<tr id="tr02">
									<td>第2路输出</td>
									<td><img id="imgbtn02" name="lightImg"  src="./images/light_nostate.png"></td>
									<td>
										<div>
											<button id="btn02" name="btn" type="button" onclick="dian(this)">开灯</button>
										</div>
									</td>
								</tr>
								<tr id="tr03">
									<td>第3路输出</td>
									<td><img id="imgbtn03" name="lightImg"  src="./images/light_nostate.png"></td>
									<td>
										<div>
											<button id="btn03" name="btn" type="button" onclick="dian(this)">开灯</button>
										</div>
									</td>
								</tr>
								<tr id="tr04">
									<td>第4路输出</td>
									<td><img id="imgbtn04" name="lightImg"  src="./images/light_nostate.png"></td>
									<td>
										<div>
											<button id="btn04" name="btn" type="button" onclick="dian(this)">开灯</button>
										</div>
									</td>
								</tr>
								<tr id="tr05">
									<td>第5路输出</td>
									<td><img id="imgbtn05" name="lightImg"  src="./images/light_nostate.png"></td>
									<td>
										<div>
											<button id="btn05" name="btn" type="button" onclick="dian(this)">开灯</button>
										</div>
									</td>
								</tr>
								<tr id="tr06">
									<td>第6路输出</td>
									<td><img id="imgbtn06" name="lightImg"  src="./images/light_nostate.png"></td>
									<td>
										<div>
											<button id="btn06" name="btn" type="button" onclick="dian(this)">开灯</button>
										</div>
									</td>
								</tr>
								<tr id="tr07">
									<td>第7路输出</td>
									<td><img id="imgbtn07" name="lightImg"  src="./images/light_nostate.png"></td>
									<td>
										<div>
											<button id="btn07" name="btn" type="button" onclick="dian(this)">开灯</button>
										</div>
									</td>
								</tr>
								<tr id="tr08">
									<td>第8路输出</td>
									<td><img id="imgbtn08" name="lightImg"  src="./images/light_nostate.png"></td>
									<td>
										<div>
											<button id="btn08" name="btn" type="button" onclick="dian(this)">开灯</button>
										</div>
									</td>
								</tr>
								<tr>
									<td>
									
									<input class="btn btn-mini btn-primary" id="auto-refresh" disabled="disabled" value="自动刷新" type="button" /> 
									<input class="btn btn-mini btn-info" id="timing-refresh"  value="实时查询" type="button"/> 
									<input class="btn btn-mini btn-success" id="btn_All_Light" value="全部开灯" type="button" onclick="allSet()"/>&nbsp;&nbsp;&nbsp;&nbsp;		
									<div style="display:none">						
										<input name="btnVal" id="btnVal" type="text" />
										<input name="buttonVal" id="buttonVal" type="text" />
									</div>
									
									<input class="btn btn-mini btn-danger" id="btnset" value="　设　置　" type="submit" onclick="getLightState();"/>
								
									</td>
								
									
									
									<td colspan="2">
									<select comboname="isld" id="isld"
										class="easyui-combobox combobox-f combo-f">
											<option value="1">手动联动</option>
											<option value="0">不手动联动</option>
									</select>
									<select
										comboname="skld"  id="skld"
										class="easyui-combobox combobox-f combo-f">
											<option value="11">时控联动</option>
											<option value="10">不时控联动</option>
									</select>
									<select
										 id="moudle"
										class="easyui-combobox combobox-f combo-f">
											<option value="101">正常模式</option>
											<option value="010">应急模式</option>
									</select>
									</td>
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
