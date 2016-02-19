<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>顺和</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>

</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>目录</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png"/></span>集中控制管理
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="lightSet.jsp" target="rightFrame">手动开关灯</a><i></i></li>
        <li><cite></cite><a href="lightTimeSetting.jsp" target="rightFrame">开关灯时间</a><i></i></li>
        <li><cite></cite><a href="timeRegulator.jsp" target="rightFrame">时段稳压</a><i></i></li>
        <li><cite></cite><a href="groupControlSetting.jsp" target="rightFrame">组控设置</a><i></i></li>
        <li><cite></cite><a href="maps.jsp" target="rightFrame">百度地图 </a><i></i></li>
        <li><cite></cite><a href="recordQuery.jsp" target="rightFrame">记录查询</a><i></i></li>
        <li><cite></cite><a href="imgtable.jsp" target="rightFrame">当前警报</a><i></i></li>
        <li><cite></cite><a href="imgtable.jsp" target="rightFrame">电缆防盗信息  </a><i></i></li>
        </ul>    
    </dd>
        
    <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>单灯控制管理 
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="#">单灯地图</a><i></i></li>
        <li><cite></cite><a href="#">单灯校时</a><i></i></li>
        <li><cite></cite><a href="#">强制开关灯</a><i></i></li>
        <li><cite></cite><a href="#">快速控制</a><i></i></li>
        <li><cite></cite><a href="#">单灯开关灯时间</a><i></i></li>
        <li><cite></cite><a href="#">信息统计</a><i></i></li>
        <li><cite></cite><a href="#">历史记录</a><i></i></li>
        <li><cite></cite><a href="warnningInfo.jsp" target="rightFrame">单灯警报信息</a><i></i></li>
        </ul>     
    </dd> 
   
    <dd><div class="title"><span><img src="images/leftico03.png" /></span>资产管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">资产录入</a><i></i></li>
        <li><cite></cite><a href="#">资产分类比例分析</a><i></i></li>
        <li><cite></cite><a href="#">资产标准能耗分析</a><i></i></li>
    </ul>
    </dd>  

    
    </dl>
</body>
</html>
