<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="layout.tld" prefix="e"%>

<e:override name="title">股东汇 | 管理平台</e:override>


<e:override name="content_right">
<script>
$(function(){
 $("#All").change(function(){
   if($(this).attr("checked")=="checked"){
     $("input[name='checkboxGroup']").each(function(){
      if($(this).prop("checked")==false)
         $(this).click();
     });  
   }
   else{
     $("input[name='checkboxGroup']").each(function(){
      if($(this).prop("checked")==true)
         $(this).click();
     });  
   }
 });

});


function sendBackDo(type){
   var postdata = new Array();
   $("input[name='checkboxGroup']:checked").each(function(){
      postdata.push($(this).val());
   });
   if($("input[name='checkboxGroup']:checked").size()>0){
   if(type==1){
     $.post("<c:url value='/system/product/detproduct'/>",{idArray:postdata.toString()},function(text){
       if(text==1){
        alert("删除成功");
        location.reload();
       }
     });
     }
    if(type==2){
     $.post("<c:url value='/system/product/upproductstate'/>",{idArray:postdata.toString()},function(text){
       if(text==1){
        alert("上架成功");
        location.reload();
       }
     });
     }
   }
}



	//init
	$(function(){
		var totalPage =Math.ceil(${pageCount/10});
		var totalRecords = ${pageCount};
		var pageNo = getParameter('page');
		if(!pageNo){
			pageNo = 1;
		}
		//生成分页
		//有些参数是可选的，比如lang，若不传有默认值

		kkpager.generPageHtml({
			pno : pageNo,
			//总页码
			total : totalPage,
			//总数据条数
			totalRecords : totalRecords,
			//链接前部
			hrefFormer : '',
			//链接尾部
			hrefLatter : '.html',
			getLink : function(n){
				return "<c:url value='/system/product/getStorageProduct'/>?page="+n+"&category=<c:out value='${param.category}' default='0'/>";
			} 
		});
	});

</script>

	<ul class="breadcrumb">
		<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
			class="icon-angle-right"></i></li>
		<li><a href="#">Publish</a></li>
	</ul>

	<div class="row-fluid">
		<div class="box span12">
			<div class="box-content">
				<ul class="nav nav-pills nav-justified">
  
					<li class="<c:if test="${param.category==null||param.category==0}">active</c:if>"><a href="<c:url value='/system/product/getStorageProduct' />"><span >所有商品&nbsp;</span> <i
							class="#">|</i></a></li>

					<li id="li1" class="<c:if test="${param.category==1}">active</c:if>" ><a href="<c:url value='/system/product/getStorageProduct?category=1' />" ><span>售完下架&nbsp;</span><i class="#">|</i></a></li>

					<li id="li2" class="<c:if test="${param.category==2}">active</c:if>"><a href="<c:url value='/system/product/getStorageProduct?category=2' />"><span>我下架&nbsp;</span><i
							class="#">|</i></a></li>
				</ul>
				<hr>
				<div class="span12" style="width:95%">

					<div class="box-content">
<!-- 						<div class="searchbar"> -->
<!-- 							<form action="" method="post" class="form-horizontal"> -->
<!-- 								<div class="form-group"> -->
<!-- 									<label class="control-label"></label> <input type="text" -->
<!-- 										class="form-control" placeholder="输入宝贝名称进行搜索"> -->
<!-- 									<button type="submit" class="btn btn-default">搜索宝贝</button> -->
<!-- 									<label for="consume-tip" class="control-label"></label> -->
<!-- 								</div> -->
<!-- 							</form> -->

<!-- 						</div> -->
<!-- 						<hr> -->
<!-- 						<p>没有找到符合条件的宝贝！</p> -->
<!-- 						<hr> -->
						<div class="bought-list">
							<form action="" method="post">
								<table class="table table-striped table-bordered" >
									<colgroup>
										<col class="baobei">
										<col class="price">
										<col class="quantity">
										<col class="item-operate">
										<col class="amount">
										<col class="product-status">
										<col class="trade-operate">
									</colgroup>
									<thead>
										<tr class="col-name">
											<th class="baobei">宝贝名称</th>
											<th class="price">单价(元)</th>
											<th class="quantity">库存</th>
											<th class="totallnum">总销量</th>

											<th class="starttime">创建时间</th>

											<th class="product-status">商品状态</th>
											<th class="trade-operate">操作</th>
										</tr>
										<tr class="toolbar toolbar-top">
											<td colspan="8"><input id="All" type="checkbox">全选&nbsp;&nbsp;<input
												type="button" value="删除" onclick="sendBackDo(1)"/><input type="button" value="上架"  onclick="sendBackDo(2)" /></td>

										</tr>
									</thead>
									<tbody id="productTable"
										class="mainOrder1146901796648843  success-order xcard">
									 
                                         <c:forEach items="${productList}" var="product">
                                          <tr class="order-hd">
											<td class="first">
												<div class="summary">
													 <input  name="checkboxGroup" value="${product.prodId}"
														   type="checkbox"> <span
														class="number last-item">商品编号 ： <em>${product.prodUuid}</em></span>
												</div>
											</td>
											<td class="column" colspan="6"><a target="_blank"
												class="shopname J_MakePoint" 
												href="">
													${product.prodName} </a></td>
											 
										</tr>
							 	<tr id="item1146901796648843" class="order-bd last     ">
											<td class="baobei"><a target="_blank" title="查看宝贝详情"
												href="#"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情" style="width:100px"
													src="${product.pictureRelates[0].pictures.picUrl}"> 
											</a>
												<div class="desc">
													<p class="baobei-name">
														<a target="_blank"
															href="#"
															class="J_MakePoint"
															 >
															${product.prodName} </a> 
													</p>
												 
												</div> 
											 </td>
											<td class="price" title="159.00"><em
												class="origin-price special-num">${product.prodPrice}</em><br></td>
											<td class="quantity" title="1"><i class="special-num">${product.prodStore-product.prodSell}</i>
											<td class="totallnum" title="1"><i class="special-num">${product.prodSell}</i>
											</td>
											<td class="starttime">
												<p>
													<br>${fn:substring(product.prodDate, 0, 10)}<br>
												</p>
											</td>
											<td class="product-status" rowspan="1">
											    <c:if test="${product.prodStore-product.prodSell<=0}"><p>售完下架</p></c:if>
											    <c:if test="${product.prodStore-product.prodSell>0}"><p>已下架</p></c:if>
												</td>

											<td class="trade-operate" rowspan="2"><a
												href="<c:url value="/system/product/editproductPage?prod_id=${product.prodId}"></c:url>"
												 > 编辑宝贝 </a></td>
										</tr>
										
										
										
                                         </c:forEach>
										 
									</tbody>
								</table>

							</form>
				   <div class="col-sm-12 pagination  text_center" >
                          <div id="kkpager"></div>
                   </div>
						</div>
						<!--end bought-list-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/row-->
</e:override>

<%@include file="/merchant/main.jsp"%>