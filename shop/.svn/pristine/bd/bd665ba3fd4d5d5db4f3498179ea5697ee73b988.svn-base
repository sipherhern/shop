<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="layout.tld" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>
<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getAttribute("content") != null ? request.getAttribute("content").toString() : "";
%>
<e:override name="title">股东汇 | 管理平台</e:override>



<e:override name="content_right">
	  <script>
	  var editor;
		KindEditor.ready(function(K) {
			    editor = K.create('textarea[name="prodDesc"]', {
				uploadJson : '../../merchant/upload_json.jsp',
				fileManagerJson : '../../merchant/file_manager_json.jsp',
				allowFileManager : false,
				urlType:'domain',
				afterCreate : function() {

				}
			});
			prettyPrint();
		});
		
	    var imgCount=0;
	       function imgDelete(thi,c){
		    	$(thi).parent().remove();
		    	$("#imgInput"+c).remove();
		    	imgCount--;
		   }
	       
	        function initImg(url){
	         $("#imgInputDiv").append("<input type='hidden' value='"+url+"' id='imgInput"+imgCount+"' name='img["+imgCount+"]' />");
             $("#imgPanel").append("<span><img src='"+url+"' style='width:200px;height:150px' /><span class=\"fa fa-times cursor\" onclick=\"imgDelete(this,"+imgCount+")\"></span>");   
	         imgCount++;
	        }
	 
		 $(function(){
           $("#mainForm").validationEngine();
           $("#mainForm").submit(function(e){
		    if($('#mainForm').validationEngine('validate')){
		       if($("#selectError3").val()==""){
		         alert("请选择商品分类");
		         return false;
		       }
		    }
		    });
           
           	
	function save(){
//取得HTML内容?
//同步数据后可以直接取得textarea的value?
editor.sync();
html=document.getElementById('area').value;//原生API
$("#area").val(html);//把KindEditor产生的html代码放到schtmlnr里面，用于提交
}
           
           
	 });		
	</script>


	<!-- start: Content -->
<div ng-app='myApp' ng-controller="cccon">

	<ul class="breadcrumb">
		<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
			class="icon-angle-right"></i></li>
		<li><a href="#">Publish</a></li>
	</ul>
	<div class="box-header">
		<h2>
			<i class="halflings-icon align-justify"></i><span class="break"></span><strong>第一步     </strong>选择商品分类
		</h2>
	</div>
	<div class="row-fluid" >
		<div class="box span4">
			<div class="search_class">
				<div class="box-content">
					<div class="control-group">
						<label class="control-label" for="selectError1">一级商品分类</label>
						<div class="controls">
							<select   class="form-control"
								id="select1" ng-change="findAllcate2()" ng-model="cate1">
								<option value="">请选择商品分类</option>
								<option ng-repeat="cate1 in cate1List" value="{{cate1.id}}">
                                     {{cate1.className}}								
								</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/span-->

		<div class="box span4">
			<div class="search_class">
				<div class="box-content">
					<div class="control-group">
						<label class="control-label" for="selectError2">二级商品分类</label>
						<div class="controls">
							<select class="form-control" ng-change="findAllcate3()" ng-model="cate2"
								id="select2"  >
							   <option ng-repeat="cate2 in cate2List" value="{{cate2.id}}">
                                     {{cate2.className}}								
								</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/span-->


		<div class="box span4">
			<div class="search_class">
				<div class="box-content">
					<div class="control-group">
						<label class="control-label" for="selectError3">三级商品分类</label>
						<div class="controls">
							<select class="form-control"  ng-model="cate3"
								id="select3" >
								<option value=""></option>
							 	 <option ng-repeat="cate3 in cate3List" value="{{cate3.id}}">
                                     {{cate3.className}}								
								</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/span-->
		
		

	</div>
	<!--/row-->



<div class="box-header">
		<h2>
			<i class="halflings-icon align-justify"></i><span class="break"></span><strong>第二步
			</strong>填写商品基本信息
		</h2>
	</div>
	<div class="row-fluid">
		<div class="box span12">
			<br>
 
			<form class="form-horizontal" id="mainForm"
				action='<c:url value="/system/product/updateproductDo"/>' method="post">
				<fieldset>
				<input type="hidden" id="thirdClassId" name="thirdClassId" />
				<input type="hidden" value="${product.prodId}" name="prodId" />
					<div class="control-group">
						<label class="control-label" for="typeahead">宝贝标题 </label>
						<div class="controls">
							<input type="text" class="span6 typeahead validate[required] "  name="prodName" value="${product.prodName}">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="typeahead">宝贝数量 </label>
						<div class="controls">
							<input type="text" class="span6 typeahead validate[required,custom[integer]]"  name="prodStore"  value="${product.prodStore}" >						
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="typeahead">商品条形码 </label>
						<div class="controls">
							<input type="text" class="span6 typeahead validate[required]" id="typeahead" name="prodCode" value="${product.prodCode}">						
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="typeahead">商品重量(kg) </label>
						<div class="controls">
							<input type="text" class="span6 typeahead validate[required,custom[number]]" id="typeahead" name="prodWeight" value="${product.prodWeight}">										
						</div>
					</div>		
					<div class="control-group">
						<label class="control-label" for="typeahead">宝贝价格 </label>
						<div class="controls">
							<input type="text" class="span6 typeahead validate[required,custom[number]]" id="typeahead" name="prodPrice"  value="${product.prodPrice}">						
						</div>
					</div>
				 
					 
					<div class="control-group">
						<label class="control-label" for="starttime" >上架时间</label>
						<div class="controls">
							<input type="text" class="input-xlarge datepicker validate[required]" id="starttime" name="prodDate"  
							value="<fmt:formatDate value="${product.prodDate}" pattern="MM/dd/yyyy"/>">
						</div>
					</div>
					 
					<div class="control-group">
						<label class="control-label">宝贝规格 </label>
						<div class="box span9" >
					          <c:forEach items="${product.skuProds}" var="skuProd" varStatus="vs">
					              <input type="hidden" value="${skuProd.skuprodId}" name="typeId[${vs.index}]" />
					              ------${skuProd.categoryBySku2Id1.kindName}----- ${skuProd.categoryBySku2Id2.kindName}-----数量:<input name="amount[${vs.index}]" value="${skuProd.prodStore}"/>
					              <br>
					          </c:forEach>
						</div>
					</div>


					<div class="control-group hidden-phone">
						<label class="control-label" for="textarea2">宝贝描述</label>
						<div class="controls">
							<textarea name="prodDesc" id="area" cols="100" rows="8" style="width:100%;height:700px;visibility:hidden;"><%=htmlspecialchars(htmlData)%></textarea>
						</div>
					</div>
					
					<div id="imgInputDiv"></div>
					
				</fieldset>
			</form>
				 	<div class="control-group" style="padding:10px 50px 50px 110px">
						<label class="control-label" for="typeahead">宝贝图片</label>
	<div class="box span9">
	<div id="imgPanel">
	   <script>
	    <c:forEach items="${product.pictureRelates}" var="img">initImg('${img.pictures.picUrl}');</c:forEach>
	   </script>
	
	
	</div>
   <iframe name="imgIframe" class="display" ></iframe>
   <form  enctype="multipart/form-data"  action="<c:url value='/system/product/saveTemporaryImg' />" id="imgForm"  method="post" target="imgIframe">
	 <input type="file" class="form-control login-field" name="image" onchange="beforeSubmit(this)" />
	</form>
	    	    <script>
		        function beforeSubmit(thi){
		        	if(imgFileChange(thi)){
		        		$('#imgForm').submit();
		        		showLoading("正在上传图片。。。");
		        }
		        }
		        </script>
	
	
	 </div>
						
						
				  <div class="control-group">
						<label class="control-label"></label>
						<div class="span9">
							<button  class="btn btn-primary btn-lg" 
							 onclick="save();$('#thirdClassId').val($('#select3').val());$('#mainForm').submit()">保存</button>
						</div>
					</div>
						
						
						
					</div>

			
		</div>
	</div>
	<!--/row-->
	<!--/.fluid-container-->
	
	
	<div class="modal fade" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"  >子分类</h4>
      </div>
       <div class="modal-body"  >
									<div class="control-group">
										<label class="control-label"  >子分类名称和数量</label> 
										<div class="controls"> 
										 <input class="span8 typeahead" id="input1" placeholder="具体颜色/具体尺寸/具体大小等" />
										 <a class="btn btn-primary"  onclick="labelAdd()">添加</a>
										</div>
										<input type="hidden" value="" id="type">
										<div id="showPanel"></div>
									</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>

<div ng-click="findAllcate2()" class="display" id="findAllcate2"></div>
<div ng-click="findAllcate3()" class="display" id="findAllcate3"></div>
</div>

  <script type="text/javascript">
 var interv;
function interval1(){
 if($("#select1 option[value='${product.thirdClass.secondClass.firstClass.id}']").html()!="undefined"){
    $("#select1").val(${product.thirdClass.secondClass.firstClass.id});
    clearInterval(interv);
    $("#findAllcate2").click();
 }
}
  
function interval2(){
 if($("#select2 option[value='${product.thirdClass.secondClass.id}']").html()!="undefined"){
    $("#select2").val(${product.thirdClass.secondClass.id});
    clearInterval(interv);
    $("#findAllcate3").click();
 }
}  
  
  
function interval3(){
 if($("#select3 option[value='${product.thirdClass.id}']").html()!="undefined"){
    $("#select3").val(${product.thirdClass.id});
    clearInterval(interv);
 }
}  
    
  
  
var myAppModule = angular.module('myApp', []);
myAppModule.controller('cccon',
function($scope,$http) {
	 $scope.findAllcate1=function(){
		 $.post("<c:url value='/system/category/findAllcate1'/>",{},
		    function(response) { 
		    $scope.$apply(function(){$scope.cate1List = eval(response);
		    interv=setInterval("interval1()",500);
            });
		 }); 
	    };
	 	 $scope.findAllcate2=function(){
	 	 var cate1=$("#select1").val();
		 $.post("<c:url value='/system/category/findAllcate2'/>",{cate1Id:cate1},
		    function(response) { 
		    $scope.$apply(function(){$scope.cate2List = eval(response);
		    interv=setInterval("interval2()",500);
            });
		 }); 
		 };
		 
	    $scope.findAllcate3=function(){
	     var cate2=$("#select2").val();
		 $.post("<c:url value='/system/category/findAllcate3'/>",{cate2Id:cate2},
		    function(response) { 
		    $scope.$apply(function(){$scope.cate3List = eval(response);
		    interv=setInterval("interval3()",500);
            });
		 });
	   };
	 $scope.findAllcate1();
}
);
 
</script>


	<script>
	
	
	function save(){
//取得HTML内容?
//同步数据后可以直接取得textarea的value?
editor.sync();
html=document.getElementById('area').value;//原生API
$("#area").val(html);//把KindEditor产生的html代码放到schtmlnr里面，用于提交
}
	</script>
	
</e:override>




<%@include file="/merchant/main.jsp"%>