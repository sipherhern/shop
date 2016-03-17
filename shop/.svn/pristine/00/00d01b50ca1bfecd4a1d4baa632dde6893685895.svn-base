<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="layout.tld" prefix="e"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no">

<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

<meta name="Description" content="股东会的描述" />
<meta name="Keywords" content="股东会的关键字，关键字" />
<meta name="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title><e:block name="title">股东汇 | 管理平台</e:block></title>

<e:block name="style">
	<link rel="stylesheet" href="<c:url value='/res/plugins/kindEditor/themes/default/default.css'/>" />
	<link rel="stylesheet" href="<c:url value='/res/plugins/kindEditor/plugins/code/prettify.css'/>" />
	<script charset="utf-8" src="<c:url value='/res/plugins/kindEditor/kindeditor.js'/>"></script>
	<script charset="utf-8" src="<c:url value='/res/plugins/kindEditor/lang/zh_CN.js'/>"></script>
	<script charset="utf-8" src="<c:url value='/res/plugins/kindEditor/plugins/code/prettify.js'/>"></script>
    <script src="<c:url value='/res/js/jquery.min.js'/>"></script>
    <script src="<c:url value='/res/js/angular.min.js'/>"></script>
    <script src="<c:url value='/res/js/basic.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/res/css/kkpager_blue.css'/>" />
	<script charset="utf-8" src="<c:url value='/res/js/kkpager.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/res/css/validationEngine.jquery.css' />" />     
     
	<!-- start: CSS -->
	<link id="bootstrap-style"
		href="<c:url value='/res/css/font-awesome.css'/>" rel="stylesheet">
		
	<link id="bootstrap-style"
		href="<c:url value='/res/css/bootstrap.min.css'/>" rel="stylesheet">		
		
	<link href="<c:url value='/res/css/bootstrap-responsive.min.css'/>"
		rel="stylesheet">
	<link id="base-style" href="<c:url value='/res/css/style.css'/>"
		rel="stylesheet">
	<link   href="<c:url value='/res/css/msgbox.css'/>"
		rel="stylesheet">		
	<link id="base-style-responsive"
		href="<c:url value='/res/css/style-responsive.css'/>" rel="stylesheet">
 	<link  
		href="<c:url value='/res/css/multiple-select.css'/>" rel="stylesheet">
	<!-- end: CSS -->
	<%-- 
	<link id="base-style" href="<c:url value='/res/css/halflings.css'/>"
		rel="stylesheet">
	<link id="base-style" href="<c:url value='/res/css/font-awesome.min.css'/>"
		rel="stylesheet">
 --%>


	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->

	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
	<link  
		href="<c:url value='/res/css/basic.css'/>" rel="stylesheet">

	<!-- start: Favicon -->
	<link rel="shortcut icon" href="<c:url value='/res/img/favicon.ico'/>">
	<!-- end: Favicon -->
    <script>
    if(${alert=="1"}){
     alert("商品新建成功，存放在下架商品中。");
    }
    else if(${alert=="2"}){
     alert("商品修改成功。");
    }
    
     function getParameter(name) { 
		var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); 
		var r = window.location.search.substr(1).match(reg); 
		if (r!=null) return unescape(r[2]); return null;
	}
	
	
    </script>

</e:block>

<e:block name="more_style">
</e:block>

<!--页头-->
<e:block name="header">
<div style="top:300px" id="q_Msgbox" class="zeng_msgbox_layer_wrap display">
<span id="mode_tips_v2" style="z-index:10000" class="zeng_msgbox_layer">
<span class="gtl_ico_clear"></span><span class="gtl_ico_loading"></span><span id="loadingText">正在加载中，请稍后...</span>
<span class="gtl_end"></span>
</span>
</div>

<div id="mask" class="display"></div>
<div id="modal-wrapper"  class="show-modal display">
<div class="col-sm-3" ><span class="fa fa-info-circle" style="font-size:30px;color:#555;text-align:right"></span></div>
<div class="col-sm-9 content" ></div>
</div>



	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a> <a class="brand" href="<c:url value='/merchant/login.jsp'/>"><span>股东汇|管理平台</span></a>

				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav navbar-nav pull-right">
						<!-- start: User Dropdown -->
						<li class="dropdown"><a class="btn dropdown-toggle"
							data-toggle="dropdown" href="#"> <i
								class="halflings-icon white user"></i> ${sessionScope.shopName} <span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title"><span>Account
										Settings</span></li>
								<li><a href='<c:url value="/merchant/login.jsp"/>'><i class="halflings-icon off"></i>
										Logout</a></li>
							</ul></li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->

			</div>
		</div>
	</div>
	<!-- start: Header -->

</e:block>

<!-- 内容区 -->
<e:block name="content">
	<div class="container-fluid-full">
		<div class="row-fluid">
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="<c:url value='/merchant/main.jsp'/>"><i
								class="icon-bar-chart"></i><span class="hidden-tablet">
									商城卖家中心</span></a></li>
						<li><a class="dropmenu" href="#"><i
								class="fa fa-diamond"></i><span class="hidden-tablet">
									宝贝管理</span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/system/product/addproductPage'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											发布宝贝</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/system/product/getStorageProduct'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											仓库中的宝贝</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/system/product/getSellingProduct'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											出售中的宝贝</span></a></li>
							</ul></li>
						<li><a class="dropmenu" href="#"><i
								class="fa fa-gavel"></i><span class="hidden-tablet">
									交易管理</span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/system/product/getSoldProduct'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											已卖出的宝贝</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/system/product/getShopComment'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											评价管理</span></a></li>
							</ul></li>
						<li><a class="dropmenu" href="#"><i
								class="fa fa-building"></i><span class="hidden-tablet">
									店铺管理</span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/merchant/shop/shop_detail.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											店铺基本信息</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/shop/myMember.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											我的会员</span></a></li>
							</ul></li>
						<li><a class="dropmenu" href="#"><i
								class="fa fa-bus"></i><span class="hidden-tablet">
									物流管理</span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/system/product/getWaitSendProduct'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											发货</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/system/product/getTemplate'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											物流工具</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/logis/logis_service.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											物流服务</span></a></li>
							</ul></li>
						<li><a class="dropmenu" href="#"><i
								class="fa fa-smile-o"></i><span class="hidden-tablet">
									客户服务</span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/merchant/service/refund_list.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											退款管理</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/system/product/getShopConsult'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											咨询回复</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/system/product/getShopComplaint'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											投诉管理</span></a></li>
							</ul></li>
						<li><a href="<c:url value='/merchant/login.jsp'/>"><i
								class="icon-lock"></i><span class="hidden-tablet"> Login
									Page</span></a></li>
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->

			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>
						You need to have <a href="http://en.wikipedia.org/wiki/JavaScript"
							target="_blank">JavaScript</a> enabled to use this site.
					</p>
				</div>
			</noscript>
			<div id="content" class="span10">
				<e:block name="content_right">
                       <div style="font-size:60px;text-align:center;margin-top:100px">欢迎来到，商城卖家中心</div>
				</e:block>


			</div>


			<!-- end: Content -->
		</div>
		<!--/#content.span10-->
	</div>
	<!--/fluid-row-->

	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a> <a href="#"
				class="btn btn-primary">Save changes</a>
		</div>
	</div>

	<div class="clearfix"></div>
</e:block>

<e:block name="body">


</e:block>

<!-- 页脚 -->
<e:block name="footer">



	<footer>

		<p>
			<span style="text-align: left; float: left">&copy; 2011 <a
				href="<c:url value='/merchant/main.jsp'/>">Bootstrap Metro
					Dashboard</a></span>

		</p>

	</footer>
</e:block>
<e:block name="script">
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<c:url value='/res/js/jquery.min.js'/>"></script>

	<!-- Bootstrap Core JavaScript -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="<c:url value='/res/plugin/bootstrap/js/bootstrap.min.js'/>"></script>


 
	<!-- start: JavaScript-->
    
	<script src="<c:url value='/res/js/jquery-migrate-1.0.0.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery-ui-1.10.0.custom.min.js'/>"></script>

 

	<script src="<c:url value='/res/js/jquery.cookie.js'/>"></script>

	<script src='<c:url value='/res/js/fullcalendar.min.js'/>'></script>

	<script src='<c:url value='/res/js/jquery.dataTables.min.js'/>'></script>

	<script src="<c:url value='/res/js/excanvas.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.chosen.min.js'/>"></script>



	<script src="<c:url value='/res/js/jquery.noty.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.elfinder.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.raty.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.iphone.toggle.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.uploadify-3.1.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.gritter.min.js'/>"></script>

 

	<script src="<c:url value='/res/js/jquery.masonry.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.knob.modified.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.sparkline.min.js'/>"></script>

	<script src="<c:url value='/res/js/counter.js'/>"></script>

	<script src="<c:url value='/res/js/retina.js'/>"></script>
   
	<script src="<c:url value='/res/js/custom.js'/>"></script>
	
	
    <script src="<c:url value='/res/js/jquery.validationEngine-zh_CN.js'/>"></script>
    <script src="<c:url value='/res/js/jquery.validationEngine.min.js'/>"></script>
	<script src="<c:url value='/res/js/jquery.multiple.select.js' />" ></script>
	
	<!-- end: JavaScript-->

</e:block>
<e:block name="more_script">

</e:block>