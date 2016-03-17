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
				return "<c:url value='/system/product/getShopComplaint'/>?page="+n;
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
											<th class="quantity">购买数量</th>
											<th class="totallnum">应付款</th>
											<th class="totallnum">已付款</th>
											<th class="starttime">订单创建时间</th>
											<th class="product-status">交易状态</th>
											<th class="trade-operate">操作</th>
										</tr>
										<tr class="toolbar toolbar-top">
											<td colspan="8"><input id="All" type="checkbox">全选&nbsp;&nbsp;</td>

										</tr>
									</thead>
									<tbody id="productTable"
										class="mainOrder1146901796648843  success-order xcard">
									 
                                         <c:forEach items="${productList}" var="sold">
                                          <tr class="order-hd">
											<td class="first">
												<div class="summary">
													 <input  name="checkboxGroup" value="${sold.skuProd.product.prodId}"
														   type="checkbox"> <span
														class="number last-item">商品编号 ： <em>${sold.skuProd.product.prodUuid}</em></span>
												</div>
											</td>
											<td class="column" colspan="4">购买者：<a target="_blank"
												class="shopname J_MakePoint" 
												href="">
													${sold.order.customer.custUname} </a></td>
											<td class="column" colspan="3">付款方式： 
											    <c:if test="${sold.order.orderPayType=='online'}">在线付款</c:if>
											    <c:if test="${sold.order.orderPayType=='offline'}">货到付款</c:if>
												</td>			
											 
										</tr>
							 	<tr id="item1146901796648843" class="order-bd last     ">
											<td class="baobei"><a target="_blank" title="查看宝贝详情"
												href="//item.taobao.com/item.htm?id=520085310210&amp;_u=e23k9ao49400"
												class="pic J_MakePoint"
												data-point-url="//gm.mmstat.com/listbought.2.5"> <img
													alt="查看宝贝详情" style="width:100px"
													src="${sold.skuProd.product.pictureRelates[0].pictures.picUrl}"> 
											</a>
												<div class="desc">
													<p class="baobei-name">
														<a target="_blank"
															href="//item.taobao.com/item.htm?id=520085310210&amp;_u=e23k9ao49400"
															class="J_MakePoint"
															data-point-url="//gm.mmstat.com/listbought.2.6">
															${sold.skuProd.product.prodName} </a>
													</p>
          											<p>
          											<c:if test="${sold.skuProd.categoryBySku2Id1!=null}">
          											<c:out value=" ${sold.skuProd.categoryBySku2Id1.category.kindName}"  default=""></c:out>:
          											<c:out value=" ${sold.skuProd.categoryBySku2Id1.kindName}"  default=""></c:out>
          											&nbsp;&nbsp;&nbsp;
          											</c:if>
          											<c:if test="${sold.skuProd.categoryBySku2Id2!=null}">
          											<c:out value=" ${sold.skuProd.categoryBySku2Id2.category.kindName}"  default=""></c:out>:
          											<c:out value=" ${sold.skuProd.categoryBySku2Id2.kindName}"  default=""></c:out>
          											</c:if>
          											</p>  
												</div> 
											 </td>
											<td class="price" title="159.00"><em
												class="origin-price special-num">${sold.skuProd.product.prodPrice}</em><br></td>
											<td class="quantity" title="1"><i class="special-num">${sold.prodAmount}</i>
											<td class="totallnum" title="1"><i class="special-num">${sold.order.orderPayment}</i>
											</td>
											<td>
													${sold.order.orderPaied}
											</td>	
											<td class="starttime">
													${fn:substring(sold.order.orderTime, 0, 10)}<br>
													${fn:substring(sold.order.orderTime, 11, 19)}
											</td>										
											<td class="product-status" rowspan="1">
											    <c:if test="${sold.order.orderState=='paying'}"><p>待付款</p></c:if>
											    <c:if test="${sold.order.orderState=='paysuccess_waiting'}"><p>待发货</p></c:if>
											    <c:if test="${sold.order.orderState=='delivering'}"><p>待验收</p></c:if>
											    <c:if test="${sold.order.orderState=='wait_commt'}"><p>待评价</p></c:if>
											    <c:if test="${sold.order.orderState=='success'}"><p>已完成</p></c:if>
												</td>
											<td class="trade-operate" rowspan="2">
											<c:if test="${sold.order.orderState=='paysuccess_waiting'}"> 
											<a  data-toggle="modal" data-target="#myModal10" 
												 class="btn btn-primary" onclick="$('#orderId').val(${sold.order.id});"> 发货 </a>
												</c:if>
												</td>
												
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
	 <form action="<c:url value='/system/product/sendProduct' />" method="post">
		<div class="modal fade" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"  >物流单号</h4>
      </div>
     
       <div class="modal-body"  >
									<div class="control-group">
										<label class="control-label"  >物流公司</label> 
										<div class="controls"> 
										 <input class="span8 typeahead"  name="logisticName"   />
										</div>
										<label class="control-label"  >物流单号</label> 
										<div class="controls"> 
										 <input class="span8 typeahead"  name="logisticId"   />
										</div>
										<input type="hidden" name="orderId" id="orderId">
										<div id="showPanel"></div>
									</div>
      </div>
     
      <div class="modal-footer">
       <button   class="btn btn-primary"  >确定</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
 </form>	
	
</e:override>

<%@include file="/merchant/main.jsp"%>