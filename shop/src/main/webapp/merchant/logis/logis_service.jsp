<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="layout.tld" prefix="e"%>

<e:override name="title">股东汇 | 管理平台</e:override>


<e:override name="content_right">
		<ul class="breadcrumb">
			<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
				class="icon-angle-right"></i></li>
			<li><a href="#">Publish</a></li>
		</ul>

		<div class="row-fluid">
			<iframe name="kuaidi100" src="http://www.kuaidi100.com/frame/910.html" width="910" height="700" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
		</div>
		<!--/row-->
	<!--/.fluid-container-->
</e:override>

<%@include file="/merchant/main.jsp"%>