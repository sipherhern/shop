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
		<div class="box span12">
			<div class="box-header" data-original-title>
				<h2>
					<i class="halflings-icon edit"></i><span class="break"></span> 基础信息
				</h2>
			</div>
			<div class="box-content">

				<form action="" method="post" id="SimpleIntro">
					<span><strong>您填写的信息将在店铺前台展示给买家，请认真填写！</strong></span> <br> <br>
					<ul class="form-info">
						<li><label class="#" for="#"><em>*</em>店铺名称：</label>
							<div class="sh-name">
								<input type="text" class="text" id="sh-name" data-valid="{}"
									name="#" value="u[2269424388]">
							</div></li>
						<li><span class="#">店铺标志：</span>
							<div class="shop-photo">
								<img src="//img.alicdn.com/tps/i4/T1k1l9XmxtXXXXXXXX-80-80.jpg"
									alt="店铺标志" class="shop-pic" id="file-img">

								<p class="upload-con">
									<span>文件格式GIF、JPG、JPEG、PNG文件大小80K以内，建议尺寸80PX*80PX</span>
								</p>
								<div class="control-group">
									<div class="controls">
										<input class="input-file uniform_on" id="fileInput"
											type="file">
									</div>
								</div>
							</div></li>

						<li><label class="#" for="sh-intro">店铺简介：</label>
							<div class="sh-category" style="width: 500px;">
								<textarea class="text" id="sh-intro" name="#"
									style="width: 350px; height: 36px;"> 店铺简介会在店铺索引中展现！ </textarea>
							</div></li>

						<li><label class="#"><em>*</em>联系地址：</label>
							<div class="#">
								<input type="text" class="span6 typeahead" data-valid="{}"
									name="#" value="大陆广东省广州市番禺区小谷围街道广东工业大学大生活西区西二410">
							</div></li>
						<li><label class="#"><em>*</em>店铺介绍：</label>
							<div class="control-group hidden-phone">
								<div class="controls">
									<textarea class="cleditor" id="textarea2" rows="3">店铺介绍内容不得小于10字,且不得多于25000字！</textarea>
								</div>
							</div></li>

					</ul>
					<div class="control-group">
						<label class="control-label"></label>
						<div class="span9">
							<button type="submit" class="btn btn-primary btn-lg">Save
								changes</button>
							<button class="btn btn-primary btn-lg">Cancel</button>
						</div>
					</div>
					<br>
				</form>
			</div>
		</div>
	</div>
	<!--/.fluid-container-->
</e:override>

<%@include file="/merchant/main.jsp"%>