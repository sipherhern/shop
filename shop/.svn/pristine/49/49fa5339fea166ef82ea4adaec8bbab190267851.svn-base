<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="layout.tld" prefix="e"%>

<e:override name="title">股东汇 | 管理平台</e:override>


<e:override name="content_right">
<script>
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
				return "<c:url value='/system/product/getShopComment'/>?page="+n;
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
						 
						<div class="rate-list" id="rateList" data-spm="a1z0b.3.5920813">
							<table
								class="table table-striped table-bordered">
								<colgroup>
									<col class="rate">
									<col class="content">
									<col class="who">
									<col class="what">
									<col class="op">
								</colgroup>
								<thead>
									<tr>
										<th>评分</th>
										<th>评论内容</th>
										<th>评价人</th>
										<th>商品</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${commentList}" var="comment">
									<tr class="feedback-247415667001" data-id="247415667001">
										<td class="align-c"><i class="tb-rate-ico ico-good"> ${comment.commtScore}</i>
										</td>
										<td class="J_ReviewContent">
											<p class="comment">
                                                 ${comment.commtContent}
											</p>
											<p class="date">[${fn:substring(comment.commtDate, 0, 19)}]</p>
										</td>
										<td>  ${comment.customer.custUname}    
										</td>
										<td><a
											href="//trade.taobao.com/trade/detail/trade_snap.htm?trade_id=1146901796648843"
										    target="_blank"> ${comment.product.prodName}</a>
											 </td>
										<td class="align-c op">
											<div class="reply-action">
											 <c:if test="${comment.commtReply==null}">
												<button type="button"  data-toggle="modal" data-target="#myModal10" 
										 onclick="$('#comment_id').val('${comment.procId}');"
													class="J_Reply tb-rate-btn type-taobao size-xs" >回复</button>
											 </c:if>
											 <c:if test="${comment.commtReply!=null}">
												<label class="label">已回复</label>
											 </c:if>											 
											</div>
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
				   <div class="col-sm-12 pagination  text_center" >
                          <div id="kkpager"></div>
                   </div>		
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/row-->
	
	<form action="<c:url value="/system/product/replyComment" />" method="post">
		<div class="modal fade" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"  >回复评论</h4>
      </div>
       <div class="modal-body"  >
									<div class="control-group">
										<textarea name="replyContent" class="form-control"></textarea>
										<input type="hidden"  id="comment_id" name="comment_id" />
									</div>
      </div>
      <div class="modal-footer">
        <button   class="btn btn-primary" >回复</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
</form>	
	
	
</e:override>

<%@include file="/merchant/main.jsp"%>