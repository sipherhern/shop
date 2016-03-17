<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="layout.tld" prefix="e"%>

<e:override name="title">股东汇 | 管理平台</e:override>


<e:override name="content_right">




		<script type="text/javascript">	    
    $(function() {
        $('#ms').multipleSelect({
            width: '100%'
        });
    });
		</script>


	<ul class="breadcrumb">
		<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
			class="icon-angle-right"></i></li>
		<li><a href="#">Logis</a></li>
	</ul>

	<div class="row-fluid" style="min-height:700px">
		<div class="box span12">
			<div class="box-content">

				<h2>新增运费模板</h2>
				<form method="post">
					<input name='_tb_token_' type='hidden' value='CVe5Zp0BWL5E89A'>
 
					<ul>
						<!--  模板名称设置  -->
						<li class="form-elem">
							<div class="control-group">
								<div class="controls">
									模板名称：<input type="text" name="moban" /> 
								</div>
							</div>



						</li>
				 
    

						<!-- 运费方式设置  -->
						<li class="form-elem set-free">
							<p class="free-title">
							<table class="table">
								<colgroup>
									<col width="31%"></col>
									<col width="16%"></col>
									<col width="16%"></col>
									<col width="22%"></col>
									<col width="13%"></col>
								</colgroup>
								<thead>
									<tr>
										<th>选择地区</th>
										<th>快递名称</th>
										<th>首重价格(1kg)</th>
										<th>续重价格(每KG，可填0)</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody id="J_Tbody">
									<tr>
										<td>
        <select id="ms" multiple="multiple">
            <c:forEach items="${provinces}" var="province">
              <option value="${province.province}">${province.province}</option>
            </c:forEach>
        </select>

                                       </td>
										<td><input name="transType" class="span10" /> 

										 </td>
										<td><input name="serviceType" class="span10" />

										 </td>
										<td>
											<p class="free-contion">
											<input name="serviceType" class="span10" />
											</p>
										</td>
										<td><a href="" class="halflings-icon plus"><i></i></a>
										<a href="" class="halflings-icon minus"><i></i></a></td>
									</tr>
								</tbody>
							</table>
						</li>
					</ul>
					<button type="submit">保存并返回</button>
					<button type="button"
						onclick="window.location='https://delivery.taobao.com/user/template_list.htm?fromType=&amp;auctionids=&amp;auctionid=&amp;selectedPostageid=&amp;postageid='">
						取消</button>
					<hr>
				</form>
			</div>
		</div>
	</div>

	<!--/row-->
</e:override>

<%@include file="/merchant/main.jsp"%>