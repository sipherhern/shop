<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="layout.tld" prefix="e"%>

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
								id="selectError1" ng-change="findAllcate2()" ng-model="cate1">
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
								id="selectError2"  >
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
								id="selectError3" >
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
				action='<c:url value="/system/product/addproductDo"/>' method="post">
				<fieldset>
				<input type="hidden" value="{{cate3}}" name="thirdClassId" />
					<div class="control-group">
						<label class="control-label" for="typeahead">宝贝标题 </label>
						<div class="controls">
							<input type="text" class="span6 typeahead  validate[required] "  name="prodName" >

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="typeahead">宝贝数量 </label>
						<div class="controls">
							<input type="text" class="span6 typeahead validate[required,custom[integer]]"  name="prodStore"  >						
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="typeahead">商品条形码 </label>
						<div class="controls">
							<input type="text" class="span6 typeahead validate[required]" id="typeahead" name="prodCode" >						
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="typeahead">商品重量(kg) </label>
						<div class="controls">
							<input type="text" class="span6 typeahead validate[required,custom[number]]" id="typeahead" name="prodWeight" >						
						</div>
					</div>					
					<div class="control-group">
						<label class="control-label" for="typeahead">宝贝价格 </label>
						<div class="controls">
							<input type="text" class="span6 typeahead validate[required,custom[number]]" id="typeahead" name="prodPrice" >						
						</div>
					</div>
				 
					 
					<div class="control-group">
						<label class="control-label" for="starttime" >上架时间</label>
						<div class="controls">
							<input type="text" class="input-xlarge datepicker validate[required]" id="starttime" name="prodDate">
						</div>
					</div>
					 
					<div class="control-group">
						<label class="control-label">宝贝规格 </label>
						<div class="box span9" >
						<input type="radio" name="category" value="1" onchange="$('.sku2').fadeOut();$('.sku1').fadeIn();resetForm()" checked/>一层属性&nbsp;&nbsp;&nbsp;
						<input type="radio" name="category" value="2" onchange="$('.sku2').fadeIn();$('.sku1').fadeOut();resetForm()"/>二层属性
						<input type="hidden" id="typestring" name="typestring" class="resetD"/>
<!-- 						    <a class="btn btn-success" onclick="addDiv()">增加规格类别</a>&nbsp;&nbsp;<a class="btn btn-danger" onclick="deleteDiv()">删除规格类别</a> -->
							<div class="control-group">
								<div class="span12" id="typePanel">
									<br>
									<div class="control-group">
										<label class="control-label"  >规格类别</label> 
										<div class="controls"> 
										 <input class="span6 typeahead resetD" placeholder="颜色/尺寸/大小等" name="first[0]" ng-model="sku1name"/>
										 <input type="hidden" id="htype0" class="resetD"/>
										 <a class="btn btn-sm btn-primary" data-toggle="modal" data-target="#myModal10" 
										 onclick="$('#type').val('type0');$('#showPanel').html($('#htype0').val())">新增规格子类别</a>
										</div>
									</div>
								</div>
								<div class="display sku2">
								<div class="span12 " id="typePanel1" >
									<br>
									<div class="control-group">
										<label class="control-label"  >规格类别</label> 
										<div class="controls"> 
										 <input class="span6 typeahead resetD" placeholder="颜色/尺寸/大小等" name="first[1]" ng-model="sku2name"/>
										 <input type="hidden" id="htype1" class="resetD" />
										 <a class="btn btn-sm btn-primary" data-toggle="modal" data-target="#myModal10" 
										 onclick="$('#type').val('type1');$('#showPanel').html($('#htype1').val())">新增规格子类别</a>
										</div>
									</div>
								</div>
								</div>	
								
							</div>
                               <table id="table1" class="table sku1">
                                 <tr><td ng-bind="sku1name"></td><td>数量</td></tr>
                               </table>
					 
                               <table id="table2"  class="table sku2 display">
                                 <tr><td ng-bind="sku1name"></td><td ng-bind="sku2name"></td><td>数量</td></tr>
                               </table>					 
					 
					 
					 
					 
					 
						</div>
					</div>


					<div class="control-group hidden-phone">
						<label class="control-label" for="textarea2">宝贝描述</label>
						<div class="controls">
							<textarea name="prodDesc" id="area" cols="100" rows="8" style="width:100%;height:700px;visibility:hidden;"></textarea>
						</div>
					</div>
					
					<div id="imgInputDiv"></div>
					
				</fieldset>
			</form>
				 	<div class="control-group" style="padding:10px 50px 50px 110px">
						<label class="control-label" for="typeahead">宝贝图片</label>
	<div class="box span9">
	<div id="imgPanel"></div>
   <iframe name="imgIframe" class="display" ></iframe>
   <form  enctype="multipart/form-data"  action="<c:url value='/system/product/saveTemporaryImg' />" id="imgForm"  method="post" target="imgIframe">
	 <input type="file" class="form-control login-field" name="image" onchange="save();beforeSubmit(this)" />
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
							<button  class="btn btn-primary btn-lg" onclick="$('#mainForm').submit()">保存</button>
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
</div>
		      <script type="text/javascript">
var myAppModule = angular.module('myApp', []);
myAppModule.controller('cccon',
function($scope,$http) {
	 $scope.findAllcate1=function(){
		 $.post("<c:url value='/system/category/findAllcate1'/>",{},
		    function(response) { 
		    $scope.$apply(function(){$scope.cate1List = eval(response);
              });
		 }); 
	    };
	 	 $scope.findAllcate2=function(){
		 $.post("<c:url value='/system/category/findAllcate2'/>",{cate1Id:$scope.cate1},
		    function(response) { 
		    $scope.$apply(function(){$scope.cate2List = eval(response);
              });
		 }); 
		 };
		 
	    $scope.findAllcate3=function(){
		 $.post("<c:url value='/system/category/findAllcate3'/>",{cate2Id:$scope.cate2},
		    function(response) { 
		    $scope.$apply(function(){$scope.cate3List = eval(response);
              });
		 });
	   };
	 $scope.findAllcate1();
}
);
 
</script>


	<script>
	Array.prototype.indexOf = function(val) {              
    for (var i = 0; i < this.length; i++) {  
        if (this[i] == val) return i;  
    }  
    return -1;  
   };  
	
Array.prototype.remove = function(val) {  
    var index = this.indexOf(val);  
    if (index > -1) {  
        this.splice(index, 1);  
    }  
};  
	
	      var countTotal=1;
	      var array1=new Array();
 		  var array2=new Array();
	
		  function labelDelete(thi,t1){
		        var type=$("#type").val();
		    	$(thi).parents("label").remove();
		    	$("#h"+type).val($("#showPanel").html());
		    	   if(type=="type0")
	                  array1.remove(t1);
	               if(type=="type1")
	                  array2.remove(t1);
	               rebuild(t1,type);
		  }
		  
		  
		  function resetForm(){
              		  $(".resetD").val("");
              		  array1=new Array();
 		              array2=new Array();
 		              $(".trbuild").remove();	  
		  }
	
	
	      function labelAdd(){
					   var t1=$("#input1").val();
					   var type=$("#type").val();
	        	 $("#showPanel").append("<label class=\"label label-xs\" ><font>"+t1+"</font>&nbsp;&nbsp;<span class=\"fa fa-times\" onclick=\"labelDelete(this,'"+t1+"')\"></span></label>&nbsp;&nbsp;");
	             $("#h"+type).val($("#showPanel").html());
	                if(type=="type0")
	                  array1.push(t1);
	               if(type=="type1")
	                  array2.push(t1);
	             rebuild(t1,type);
	        }
	        
	  
	    function rebuild(t1,type){
	    
	              if($("[name='category']:checked").val()=="1"){ 
	                  var typestring="";
	                  $(".trbuild").remove();
	                  for(var i=0;i<array1.length;i++){
	                     $("#table1").append("<tr class='trbuild'><td>"+array1[i]+"</td><td><input name='amount1["+i+"]' class='validate[required,custom[number]]'/></td></tr>");
                        typestring=typestring+array1[i]+"%"
                      } 	               
	               $("#typestring").val(typestring);
	             }  
	             if($("[name='category']:checked").val()=="2"){
	                $(".trbuild").remove();
	                var typestring="";
	                for(var i=0;i<array1.length;i++){
	                  for(var j=0;j<array2.length;j++){
	                     $("#table2").append("<tr class='trbuild'><td>"+array1[i]+"</td><td>"+array2[j]+"</td><td><input name='amount2["+(i*array2.length+j)+"]' class='validate[required,integer]'/></td></tr>"); 
                         typestring=typestring+array1[i]+"@"+array2[j]+"%"
                      }    
	                }
	                $("#typestring").val(typestring);
	            } 
	    
	    
	    }
	  
	  
	        
 
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
