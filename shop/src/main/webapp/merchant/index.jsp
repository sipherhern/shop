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



	<!-- start: CSS -->
	<link id="bootstrap-style"
		href="<c:url value='/res/css/bootstrap.min.css'/>" rel="stylesheet">
	<link href="<c:url value='/res/css/bootstrap-responsive.min.css'/>"
		rel="stylesheet">
	<link id="base-style" href="<c:url value='/res/css/style.css'/>"
		rel="stylesheet">
	<link id="base-style-responsive"
		href="<c:url value='/res/css/style-responsive.css'/>" rel="stylesheet">
	<link
		href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
		rel='stylesheet' type='text/css'>
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


	<!-- start: Favicon -->
	<link rel="shortcut icon" href="<c:url value='/res/img/favicon.ico'/>">
	<!-- end: Favicon -->


</e:block>

<e:block name="more_style">
</e:block>

<!--页头-->
<e:block name="header">
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a> <a class="brand" href="<c:url value='/merchant/login.jsp'/>"><span>Metro</span></a>

				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav navbar-nav pull-right">
						<li class="dropdown hidden-phone"><a
							class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white warning-sign"></i>
						</a>
							<ul class="dropdown-menu notifications">
								<li class="dropdown-menu-title"><span>You have 11
										notifications</span> <a href="#refresh"><i class="icon-repeat"></i></a>
								</li>
								<li><a href="#"> <span class="icon blue"><i
											class="icon-user"></i></span> <span class="message">New user
											registration</span> <span class="time">1 min</span>
								</a></li>
								<li><a href="#"> <span class="icon green"><i
											class="icon-comment-alt"></i></span> <span class="message">New
											comment</span> <span class="time">7 min</span>
								</a></li>
								<li><a href="#"> <span class="icon green"><i
											class="icon-comment-alt"></i></span> <span class="message">New
											comment</span> <span class="time">8 min</span>
								</a></li>
								<li><a href="#"> <span class="icon green"><i
											class="icon-comment-alt"></i></span> <span class="message">New
											comment</span> <span class="time">16 min</span>
								</a></li>
								<li><a href="#"> <span class="icon blue"><i
											class="icon-user"></i></span> <span class="message">New user
											registration</span> <span class="time">36 min</span>
								</a></li>
								<li><a href="#"> <span class="icon yellow"><i
											class="icon-shopping-cart"></i></span> <span class="message">2
											items sold</span> <span class="time">1 hour</span>
								</a></li>
								<li class="warning"><a href="#"> <span class="icon red"><i
											class="icon-user"></i></span> <span class="message">User
											deleted account</span> <span class="time">2 hour</span>
								</a></li>
								<li class="warning"><a href="#"> <span class="icon red"><i
											class="icon-shopping-cart"></i></span> <span class="message">New
											comment</span> <span class="time">6 hour</span>
								</a></li>
								<li><a href="#"> <span class="icon green"><i
											class="icon-comment-alt"></i></span> <span class="message">New
											comment</span> <span class="time">yesterday</span>
								</a></li>
								<li><a href="#"> <span class="icon blue"><i
											class="icon-user"></i></span> <span class="message">New user
											registration</span> <span class="time">yesterday</span>
								</a></li>
								<li class="dropdown-menu-sub-footer"><a>View all
										notifications</a></li>
							</ul></li>
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-phone"><a
							class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white tasks"></i>
						</a>
							<ul class="dropdown-menu tasks">
								<li class="dropdown-menu-title"><span>You have 17
										tasks in progress</span> <a href="#refresh"><i
										class="icon-repeat"></i></a></li>
								<li><a href="#"> <span class="header"> <span
											class="title">iOS Development</span> <span class="percent"></span>
									</span> <span class="taskProgress progressSlim red">80</span>
								</a></li>
								<li><a href="#"> <span class="header"> <span
											class="title">Android Development</span> <span
											class="percent"></span>
									</span> <span class="taskProgress progressSlim green">47</span>
								</a></li>
								<li><a href="#"> <span class="header"> <span
											class="title">ARM Development</span> <span class="percent"></span>
									</span> <span class="taskProgress progressSlim yellow">32</span>
								</a></li>
								<li><a href="#"> <span class="header"> <span
											class="title">ARM Development</span> <span class="percent"></span>
									</span> <span class="taskProgress progressSlim greenLight">63</span>
								</a></li>
								<li><a href="#"> <span class="header"> <span
											class="title">ARM Development</span> <span class="percent"></span>
									</span> <span class="taskProgress progressSlim orange">80</span>
								</a></li>
								<li><a class="dropdown-menu-sub-footer">View all tasks</a>
								</li>
							</ul></li>
						<!-- end: Notifications Dropdown -->
						<!-- start: Message Dropdown -->
						<li class="dropdown hidden-phone"><a
							class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white envelope"></i>
						</a>
							<ul class="dropdown-menu messages">
								<li class="dropdown-menu-title"><span>You have 9
										messages</span> <a href="#refresh"><i class="icon-repeat"></i></a></li>
								<li><a href="#"> <span class="avatar"><img
											src="img/avatar.jpg" alt="Avatar"></span> <span class="header">
											<span class="from"> Dennis Ji </span> <span class="time">
												6 min </span>
									</span> <span class="message"> Lorem ipsum dolor sit amet
											consectetur adipiscing elit, et al commore </span>
								</a></li>
								<li><a href="#"> <span class="avatar"><img
											src="img/avatar.jpg" alt="Avatar"></span> <span class="header">
											<span class="from"> Dennis Ji </span> <span class="time">
												56 min </span>
									</span> <span class="message"> Lorem ipsum dolor sit amet
											consectetur adipiscing elit, et al commore </span>
								</a></li>
								<li><a href="#"> <span class="avatar"><img
											src="img/avatar.jpg" alt="Avatar"></span> <span class="header">
											<span class="from"> Dennis Ji </span> <span class="time">
												3 hours </span>
									</span> <span class="message"> Lorem ipsum dolor sit amet
											consectetur adipiscing elit, et al commore </span>
								</a></li>
								<li><a href="#"> <span class="avatar"><img
											src="img/avatar.jpg" alt="Avatar"></span> <span class="header">
											<span class="from"> Dennis Ji </span> <span class="time">
												yesterday </span>
									</span> <span class="message"> Lorem ipsum dolor sit amet
											consectetur adipiscing elit, et al commore </span>
								</a></li>
								<li><a href="#"> <span class="avatar"><img
											src="img/avatar.jpg" alt="Avatar"></span> <span class="header">
											<span class="from"> Dennis Ji </span> <span class="time">
												Jul 25, 2012 </span>
									</span> <span class="message"> Lorem ipsum dolor sit amet
											consectetur adipiscing elit, et al commore </span>
								</a></li>
								<li><a class="dropdown-menu-sub-footer">View all
										messages</a></li>
							</ul></li>
						<!-- end: Message Dropdown -->
						<li><a class="btn" href="#"> <i
								class="halflings-icon white wrench"></i>
						</a></li>
						<!-- start: User Dropdown -->
						<li class="dropdown"><a class="btn dropdown-toggle"
							data-toggle="dropdown" href="#"> <i
								class="halflings-icon white user"></i> Dennis Ji <span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title"><span>Account
										Settings</span></li>
								<li><a href="#"><i class="halflings-icon user"></i>
										Profile</a></li>
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
								class="icon-folder-close-alt"></i><span class="hidden-tablet">
									宝贝管理</span><span class="label label-important"> 0 </span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/merchant/product/publish.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											发布宝贝</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/product/auction_list.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											仓库中的宝贝</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/product/selling_list.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											出售中的宝贝</span></a></li>
							</ul></li>
						<li><a class="dropmenu" href="#"><i
								class="icon-folder-close-alt"></i><span class="hidden-tablet">
									交易管理</span><span class="label label-important"> 1 </span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/merchant/deal/sold_list.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											已卖出的宝贝</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/deal/myRate.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											评价管理</span></a></li>
							</ul></li>
						<li><a class="dropmenu" href="#"><i
								class="icon-folder-close-alt"></i><span class="hidden-tablet">
									店铺管理</span><span class="label label-important">2</span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/merchant/shop/shop_announ.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											店铺公告</span></a></li>
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
								class="icon-folder-close-alt"></i><span class="hidden-tablet">
									物流管理</span><span class="label label-important"> 3 </span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/merchant/logis/order_list.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											发货</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/logis/logis_tools.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											物流工具</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/logis/logis_service.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											物流服务</span></a></li>
							</ul></li>
						<li><a class="dropmenu" href="#"><i
								class="icon-folder-close-alt"></i><span class="hidden-tablet">
									客户服务</span><span class="label label-important">4 </span></a>
							<ul>
								<li><a class="submenu"
									href="<c:url value='/merchant/service/refund_list.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											退款管理</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/service/shop_seller.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											售后管理</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/service/shop_report.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											举报管理</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/service/shop_consult.jsp'/>"><i
										class="icon-file-alt"></i><span class="hidden-tablet">
											咨询回复</span></a></li>
								<li><a class="submenu"
									href="<c:url value='/merchant/service/shop_complaim.jsp'/>"><i
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
			<span style="text-align: left; float: left">&copy; 2015 <a
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

	<script src="<c:url value='/res/js/jquery.ui.touch-punch.js'/>"></script>

	<script src="<c:url value='/res/js/modernizr.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.cookie.js'/>"></script>

	<script src='<c:url value='/res/js/fullcalendar.min.js'/>'></script>

	<script src='<c:url value='/res/js/jquery.dataTables.min.js'/>'></script>

	<script src="<c:url value='/res/js/excanvas.js'/>"></script>
	<script src="<c:url value='/res/js/jquery.flot.js'/>"></script>
	<script src="<c:url value='/res/js/jquery.flot.pie.js'/>"></script>
	<script src="<c:url value='/res/js/jquery.flot.stack.js'/>"></script>
	<script src="<c:url value='/res/js/jquery.flot.resize.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.chosen.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.uniform.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.cleditor.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.noty.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.elfinder.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.raty.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.iphone.toggle.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.uploadify-3.1.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.gritter.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.imagesloaded.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.masonry.min.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.knob.modified.js'/>"></script>

	<script src="<c:url value='/res/js/jquery.sparkline.min.js'/>"></script>

	<script src="<c:url value='/res/js/counter.js'/>"></script>

	<script src="<c:url value='/res/js/retina.js'/>"></script>

	<script src="<c:url value='/res/js/custom.js'/>"></script>
	<!-- end: JavaScript-->

</e:block>
<e:block name="more_script">

</e:block>