<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="layout.tld" prefix="e"%>
<e:override name="title">股东汇 | 管理平台</e:override>

<!-- 页头 -->
<e:override name="header">
	<!-- small navbar -->
	<nav
		class="navbar navbar-default  bootstrap-admin-navbar-sm"
		role="navigation">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="collapse navbar-collapse">
						<ul
							class="nav navbar-nav navbar-left bootstrap-admin-theme-change-size">
							<li><a class="navbar-brand" href="#">Change size:</a></li>
							<li><a class="size-changer small">Small</a></li>
							<li><a class="size-changer large active">Large</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>
</e:override>
<!-- 内容区 -->
<e:override name="content">
	<!-- content -->

	<section id="cloud-hosting-for-you" class="hero extra-space">
		<div class="container">
			<!-- content -->
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="col-lg-12">
						<div class="centering text-center">
							<div class="text-center">
								<h2 class="without-margin">
									Don't worry. It's <span class="text-success"><strong>404</strong></span>
									error only.
								</h2>
								<h4 class="text-success">Page not found</h4>
							</div>
							<div class="text-center">
								<h3>
									<small>Choose an option below</small>
								</h3>
							</div>
							<hr>
							<ul class="pager">
								<li><a href="about.html">&larr; About</a></li>
								<li><a href="dashboard.html">Dashboard</a></li>
								<li><a href="ui-and-interface.html">UI Interface</a></li>
								<li><a href="error-pages.html">Other error pages &rarr;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</e:override>
<!-- 页脚 -->
<e:override name="footer">
	<!-- footer -->
	<div class="navbar navbar-footer navbar-fixed-bottom">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-lg-offset-4">
					<footer role="contentinfo">
						<p class="navbar-text">
							<strong>Bootstrap 3.x Admin Theme. </strong>&copy; 2013 <a
								href="##" target="_blank">Meritoo.pl</a>
						</p>
					</footer>
				</div>
			</div>
		</div>
	</div>
</e:override>
<%@include file="/merchant/base.jsp"%>