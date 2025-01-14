<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">

<meta charset="utf-8" />
<title></title>
<link rel="stylesheet" href="static/css/datepicker.css" />
<!-- 日期框 -->
<meta name="description" content="overview & stats" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="static/css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
<!--提示框-->
<script type="text/javascript" src="static/js/jquery.tips.js"></script>
<script type="text/javascript">
	$(top.hangge());
</script>
</head>
<body>
	<!-- 类别-->
	<div id="hiddType" style="display: none;">
		<div class="controls">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<select class="input-xlarge" style="vertical-align: top; width: 150px;" name="categoryId">
				<c:forEach items="${listCategory}" var="category" varStatus="vs">
					<option value="${category.id}">${category.name}</option>
				</c:forEach>
			</select> 
			<input type="text" name="categoryCount" placeholder="数量" title="数量" style="width: 44px; margin-bottom:0" />份 
			<a class="btn onMinusType"><i class="icon-minus"></i></a>
		</div>
	</div>
	
	<!-- 菜系-->
	<div id="hiddStyle" style="display: none;">
		<div class="controls">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<select class="input-xlarge" name="productStyleId" style-name="${style.name}" 
					id="productStyleId" data-placeholder="请选择菜系" style="vertical-align: top; width: 150px;">
					<!-- <option value="">请选择</option> -->
					<c:forEach items="${listStyle}" var="style">
						<option value="${style.id}">${style.name}</option>
					</c:forEach>
			</select> 
			<a class="btn onMinusStyle"><i class="icon-minus"></i></a>
		</div>
	</div>
	
	<!-- 形状-->
	<div id="hiddShape" style="display: none;">
		<div class="controls">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<select class="input-xlarge" name="productShapeId" id="productShapeId" shape-name="${shape.name}"
					 id="productShapeId" data-placeholder="请选择形状" style="vertical-align: top; width: 150px;">
					<!--  <option value="">请选择</option> -->
					 <c:forEach items="${listShape}" var="shape">
						<option value="${shape.id}">${shape.name}</option>
					 </c:forEach>
			</select>
			<a class="btn onMinusShape"><i class="icon-minus"></i></a>
		</div>
	</div>
	
	<!-- 口味-->
	<div id="hiddTaste" style="display: none;">
		<div class="controls">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<select class="input-xlarge" name="productTasteId" id="productTasteId" taste-name="${taste.name}"
					id="productTasteId" data-placeholder="请选择口味" style="vertical-align: top; width: 150px;">
					<!-- <option value="">请选择</option> -->
					<c:forEach items="${listTaste}" var="taste">
						<option value="${taste.id}">${taste.name}</option>
					</c:forEach>
			</select> 
			<a class="btn onMinusTaste"><i class="icon-minus"></i></a>
		</div>
	</div>
	
	<!-- 烹饪-->
	<div id="hiddCuisine" style="display: none;">
		<div class="controls">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<select class="input-xlarge" name="productCuisineId" id="productCuisineId" taste-name="${cuisine.name}"
					id="productCuisineId" data-placeholder="请选择烹饪"
					style="vertical-align: top; width: 150px;">
					<!-- <option value="">请选择</option> -->
					<c:forEach items="${listCuisine}" var="cuisine">
						<option value="${cuisine.id}">${cuisine.name}</option>
					</c:forEach>
			</select> 
			<a class="btn onMinusCuisine"><i class="icon-minus"></i></a>
		</div>
	</div>
	
	<!-- 颜色-->
	<div id="hiddColor" style="display: none;">
		<div class="controls">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<select class="input-xlarge" name="productColorId" id="productColorId" taste-name="${color.name}"
					id="productColorId" data-placeholder="请选择颜色"
					style="vertical-align: top; width: 150px;">
					<!-- <option value="">请选择</option> -->
					<c:forEach items="${listColor}" var="color">
						<option value="${color.id}">${color.name}</option>
					</c:forEach>
			</select> 
			<a class="btn onMinusColor"><i class="icon-minus"></i></a>
		</div>
	</div>

	<!-- 营养-->
	<div id="hiddNutrition" style="display: none;">
		<div class="controls">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<select class="input-xlarge" style="vertical-align: top; width: 150px;" name="nutritionId">
				<c:forEach items="${listNutrition}" var="nutrition" varStatus="vs">
					<option value="${nutrition.id}">${nutrition.paramName}</option>
				</c:forEach>
			</select> 
			<select class="input-xlarge" style="vertical-align: top; width: 50px;" name="nutritionOperator">
				<option value="&lt;" selected="">&lt;</option>
				<option value="&gt;">&gt;</option>
				<option value="=">=</option>
			</select> 
			<input type="text" name="nutritionContent" placeholder="含量" title="含量" style="width: 44px; margin-bottom:0" />
			<a class="btn onMinusNutrition"><i class="icon-minus"></i></a>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="row-fluid">
					<div class="span12">
						<form class=".form-inline" id="smartForm">
							<!-- <legend class="">智能配菜</legend> -->
							<input type="hidden" name="setMealName" id="setMealName"/>
							<input type="hidden" name="productStyleName" id="productStyleName"/>
							<input type="hidden" name="productShapeName" id="productShapeName"/>
							<input type="hidden" name="productTasteName" id="productTasteName"/>
							<input type="hidden" name="productCuisineName" id="productCuisineName"/>
							<input type="hidden" name="productColorName" id="productColorName"/>
							
							<input type="hidden" name="categoryList" id="categoryList"/>
							<input type="hidden" name="nutritionList" id="nutritionList"/>
							<fieldset>
								<div class="control-group" id="categoryGroup">
									<!-- Select Basic -->
									<div class="controls">
										类别 <select class="input-xlarge"
											style="vertical-align: top; width: 150px;" name="categoryId">
											<c:forEach items="${listCategory}" var="category"
												varStatus="vs">
												<option value="${category.id}">${category.name}</option>
											</c:forEach>
										</select>
										<input type="text" name="categoryCount" placeholder="数量" title="数量"
											style="width: 44px; margin-bottom:0"/><span>份</span> <a class="btn onAddType"
											id="onAddType"><i class="icon-plus"></i></a>
											
									</div>
								</div>
							</fieldset>
							<fieldset>
								<div class="control-group">
									<label class="control-label">属性选择</label>
								</div>
								<div class="control-group" id="styleGroup">
									<div class="controls">
										菜系 <select class="input-xlarge" name="productStyleId" style-name="${style.name}" 
											id="productStyleId" data-placeholder="请选择菜系"
											style="vertical-align: top; width: 150px;">
											<!-- <option value="">请选择</option> -->
											<c:forEach items="${listStyle}" var="style">
												<option value="${style.id}">${style.name}</option>
											</c:forEach>
										</select>
										<!--添加菜系按钮 -->
										<a class="btn onAddStyle" id="onAddStyle"><i
											class="icon-plus"></i></a>
									</div>
								</div>
								<div class="control-group" id="shapeGroup">
									<div class="controls">
										形状 <select class="input-xlarge" name="productShapeId" id="productShapeId" shape-name="${shape.name}"
											id="productShapeId" data-placeholder="请选择形状"
											style="vertical-align: top; width: 150px;">
											<!-- <option value="">请选择</option> -->
											<c:forEach items="${listShape}" var="shape">
												<option value="${shape.id}">${shape.name}</option>
											</c:forEach>
										</select>
										<!--添加按钮 -->
										<a class="btn onAddShape" id="onAddShape"><i
											class="icon-plus"></i></a>
									</div>
								</div>
								<div class="control-group" id="tasteGroup">
									<div class="controls">
										口味 <select class="input-xlarge" name="productTasteId" id="productTasteId" taste-name="${taste.name}"
											id="productTasteId" data-placeholder="请选择口味"
											style="vertical-align: top; width: 150px;">
											<!-- <option value="">请选择</option> -->
											<c:forEach items="${listTaste}" var="taste">
												<option value="${taste.id}">${taste.name}</option>
											</c:forEach>
										</select>
										<!--添加按钮 -->
										<a class="btn onAddTaste" id="onAddTaste"><i
											class="icon-plus"></i></a>
									</div>
								</div>
								<div class="control-group" id="cuisineGroup">
									<div class="controls">
										烹饪 <select class="input-xlarge" name="productCuisineId" id="productCuisineId" taste-name="${cuisine.name}"
											id="productCuisineId" data-placeholder="请选择烹饪"
											style="vertical-align: top; width: 150px;">
											<!-- <option value="">请选择</option> -->
											<c:forEach items="${listCuisine}" var="cuisine">
												<option value="${cuisine.id}">${cuisine.name}</option>
											</c:forEach>
										</select>
										<!--添加按钮 -->
										<a class="btn onAddCuisine" id="onAddCuisine"><i
											class="icon-plus"></i></a>
									</div>
								</div>
								<div class="control-group" id="colorGroup">
									<div class="controls">
										颜色</label> <select class="input-xlarge" name="productColorId" id="productColorId" taste-name="${color.name}"
											id="productColorId" data-placeholder="请选择颜色"
											style="vertical-align: top; width: 150px;">
											<!-- <option value="">请选择</option> -->
											<c:forEach items="${listColor}" var="color">
												<option value="${color.id}">${color.name}</option>
											</c:forEach>
										</select>
										<!--添加按钮 -->
										<a class="btn onAddColor" id="onAddColor"><i
											class="icon-plus"></i></a>
									</div>
								</div>
							</fieldset>
							<div class="control-group">
								<label class="control-label">配菜总成本 <select
									class="input-xlarge" style="vertical-align: top; width: 50px;"
									name="totalCostOperator">
										<option value="&lt;" selected="">&lt;</option>
										<option value="&gt;">&gt;</option>
										<option value="=">=</option>
								</select> <input type="text" name="totalCost" id="totalCost"
									placeholder="金额" title="配菜总成本" style="width: 120px;" />/元
								</label>
							</div>
							<div class="control-group">
								<label class="control-label">配菜总定价 <select
									class="input-xlarge" style="vertical-align: top; width: 50px;"
									name="totalFixedPriceOperator">
										<option value="&lt;" selected="">&lt;</option>
										<option value="&gt;">&gt;</option>
										<option value="=">=</option>
								</select> <input type="text" name="totalFixedPrice" id="totalFixedPrice"
									placeholder="金额" title="配菜总定价" style="width: 120px;" />/元
								</label>
							</div>
							<!-- 
							<label style="float:left;padding-left: 20px;"><input type="radio" checked="checked" value="0" id="isSensitiveMaterial" name="isSensitiveMaterial"><span style="width:60px" class="lbl">否</span></label>
							 -->
							<div class="control-group" id="nutritionGroup">
									<label class="control-label">营养 
									<select class="input-xlarge"
										style="vertical-align: top; width: 150px;" name="nutritionId">
											<c:forEach items="${listNutrition}" var="nutrition"
												varStatus="vs">
												<option value="${nutrition.id}">${nutrition.paramName}</option>
											</c:forEach>
									</select> <select class="input-xlarge"
										style="vertical-align: top; width: 50px;" name="nutritionOperator">
											<option value="&lt;" selected="">&lt;</option>
											<option value="&gt;">&gt;</option>
											<option value="=">=</option>
									</select> 
									<input type="text" name="nutritionContent" id="nutritionContent"
										placeholder="含量" title="含量" style="width: 44px; margin-bottom:0" /> 
										<a class="btn onAddNutrition" id="onAddNutrition">
										<i class="icon-plus"></i></a>
									</label>
								<div class="control-group" id="addNutrition"></div>
							</div>
							<div class="control-group">
								<label class="control-label">敏感食材 &nbsp;&nbsp; <input
									type="radio" checked="checked" value="1"
									id="isSensitiveMaterial" name="isSensitiveIngredients"><span
									style="width: 60px" class="lbl">加入</span> &nbsp;&nbsp; <input
									type="radio" value="0" id="isNotSensitiveMaterial"
									name="isSensitiveIngredients"><span style="width: 60px"
									class="lbl">不加入</span>
								</label>
							</div>
					</div>
					<fieldset>
						<div class="control-group">
							<label class="control-label">日期选择</label>
							<div class="controls">
								<input class="span10 date-picker" name="fixingsStartTimeStr"
									id="fixingsStartTimeStr" value="${pd.fixingsStartTime}"
									type="text" data-date-format="yyyy-mm-dd" readonly="readonly"
									style="width: 88px;" placeholder="开始日期" /> - <input
									class="span10 date-picker" name="fixingsEndTimeStr"
									id="fixingsEndTimeStr" value="${pd.fixingsEndTime}" type="text"
									data-date-format="yyyy-mm-dd" readonly="readonly"
									style="width: 88px;" placeholder="结束日期" />
							</div>
						</div>
					</fieldset>

					<fieldset>
						<div class="control-group">
							<label class="control-label">所需份数</label>
							<!-- Select Basic -->
							<div class="controls">
								<input type='checkbox' name='lunchCountSelect' id="lunchCountSelect"/>
								中饭：<input type="text" name="lunchCount" id="lunchCount" value="${pd.lunchCount}" placeholder="数量" title="数量" style="width: 44px;" />份
									</br> 
								<input type='checkbox' name='dinnerCountSelect' id="dinnerCountSelect"/>
								晚饭：<input type="text" name="dinnerCount" id="dinnerCount" value="${pd.dinnerCount}" placeholder="数量" title="数量" style="width: 44px;" />份
							</div>
						</div>
					</fieldset>

					<fieldset>
						<a class="btn btn-small btn-primary" onclick="save()">保存</a>
						&nbsp;&nbsp; <a class="btn btn-small btn-danger"
							onclick="top.Dialog.close();">取消</a>
						<!-- <a class="btn" id="myclose">关闭页面</a> -->
					</fieldset>

					</form>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12"></div>
			</div>
			<div class="row-fluid">
				<div class="span12"></div>
			</div>
		</div>
	</div>
	</div>


	<!-- 引入 -->
	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");
	</script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/ace-elements.min.js"></script>
	<script src="static/js/ace.min.js"></script>

	<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script>
	<!-- 下拉框 -->
	<script type="text/javascript"
		src="static/js/bootstrap-datepicker.min.js"></script>
	<!-- 日期框 -->
	<script type="text/javascript" src="static/js/bootbox.min.js"></script>
	<!-- 确认窗口 -->
	<!-- 引入 -->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<!--提示框-->

	<script type="text/javascript">
		//正则判断重复
		function mm(a)
		{
		   return /(\x0f[^\x0f]+)\x0f[\s\S]*\1/.test("\x0f"+a.join("\x0f\x0f") +"\x0f");
		}
		//Hash判断重复
		function isRepeat(arr) {
			   var hash = {};
			   for(var i in arr) {
			       if(hash[arr[i]])
			       {
			           return true;
			       }
			       // 不存在该元素，则赋值为true，可以赋任意值，相应的修改if判断条件即可
			       hash[arr[i]] = true;
			    }
			   return false;
			} 
		
		$(function() {
			var name = request("menuName");
			//alert(decodeURI(name));
			 $("#setMealName").val(decodeURI(name));
			//下拉框
			$(".chzn-select").chosen();
			$(".chzn-select-deselect").chosen({
				allow_single_deselect : true
			});

			//日期框
			$('.date-picker').datepicker();

			//增加类别
			$("#onAddType").click(function() {
				$("#categoryGroup").append($("#hiddType").html());
				
			});
			
			//减少类别
			$(".control-group").on('click','.onMinusType',function(){ 
				$(this).closest('.controls').remove();
			});

			//增加菜系
			$("#onAddStyle").click(function() {
				$("#styleGroup").append($("#hiddStyle").html());
				
			});
			
			//减少菜系
			$(".control-group").on('click','.onMinusStyle',function(){ 
				$(this).closest('.controls').remove();
			});

			//增加形状
			$("#onAddShape").click(function() {
				$("#shapeGroup").append($("#hiddShape").html());
				
			});
			
			//减少形状
			$(".control-group").on('click','.onMinusShape',function(){ 
				$(this).closest('.controls').remove();
			});

			//增加口味
			$("#onAddTaste").click(function() {
				$("#tasteGroup").append($("#hiddTaste").html());
				
			});
			
			//减少口味
			$(".control-group").on('click','.onMinusTaste',function(){ 
				$(this).closest('.controls').remove();
			});

			//增加烹饪
			$("#onAddCuisine").click(function() {
				$("#cuisineGroup").append($("#hiddCuisine").html());
				
			});
			
			//减少烹饪
			$(".control-group").on('click','.onMinusCuisine',function(){ 
				$(this).closest('.controls').remove();
			});

			//增加颜色
			$("#onAddColor").click(function() {
				$("#colorGroup").append($("#hiddColor").html());
				
			});
			
			//减少颜色
			$(".control-group").on('click','.onMinusColor',function(){ 
				$(this).closest('.controls').remove();
			});
			
			
			//增加营养
			$("#onAddNutrition").click(function() {
				$("#nutritionGroup").append($("#hiddNutrition").html());
			});
			
			//减少营养
			$(".control-group").on('click','.onMinusNutrition',function(){ 
				alert("周二");
				$(this).closest('.controls').remove();
			});

			$("#myclose").click(function() {
				top.Dialog.close();
			});
			
		   /*  //添加成品菜-菜系
		    $("#onAddStyle").click(function(){
		    	addStyle();
		    });
		 
		    //添加成品菜-口味
		    $("#onAddTaste").click(function(){
		    	addTaste();
		    });
		    
		    //添加成品菜-形状
		    $("#onAddShape").click(function(){
		    	addShape();
		    });
		    
		    //添加成品菜-颜色
		    $("#onAddColor").click(function(){
		    	addColor();
		    });
		    
		    //添加成品菜-烹饪
		    $("#onAddCuisine").click(function(){
		    	addCusine();
		    }); */
		    
		    //删除原料数据框:需要清空:原料框,营养框,单份成本框,需求数量框,总成本框
		    $("#deleteMaterial").click(function(){
		    $("#materialNameList").val("");
		    $("#materialIdList").val("");
		    $("#nutrition").val("");
		    $("#singleCost").val("");
		    $("#totalCost").val("");
		    $("#demandNumber").val("");
		    //bootbox.alert("清空原料成功");
		    });
		  
		   <%--  //新增烹饪
			function addCusine(){	
				 top.jzts();
				 var colorDialog = new top.Dialog();
				 colorDialog.Drag=true;
				 colorDialog.Title ="新增烹饪";
				 colorDialog.URL = '<%=basePath%>cuisineController/list.do';
				 colorDialog.Width = 770;
				 colorDialog.Height = 350;
				 colorDialog.CancelEvent = function(){ //关闭事件
					 //刷新烹饪
				     $.ajax({
				    	 type: "POST",
						 url: '<%=basePath%>cuisineController/reloadCuisine.do',
						 dataType:'json',
						 success: function(data){
						     var myObject = data;
							 var a = "<option value=''>请选择</option>";
							 for (var i = 0; i < myObject.length; i++) {
									a += "<option value=\'"+myObject[i].id+"\'>"
											+ myObject[i].name + "</option>";
							 }
							//获取添加成品菜框的烹饪元素
							 top.Dialog.getDialogById("menuSmart").getElementById("productCuisineId").innerHTML=a;
							 $chosen.trigger("liszt:updated");
					      }
				     });
				     colorDialog.close();
				 };
				 colorDialog.show();
			}
		    
		    //新增颜色
			function addColor(){	
				 top.jzts();
				 var colorDialog = new top.Dialog();
				 colorDialog.Drag=true;
				 colorDialog.Title ="新增颜色";
				 colorDialog.URL = '<%=basePath%>colorController/list.do';
				 colorDialog.Width = 770;
				 colorDialog.Height = 350;
				 colorDialog.CancelEvent = function(){ //关闭事件
					 //刷新颜色
				     $.ajax({
				    	 type: "POST",
						 url: '<%=basePath%>colorController/reloadColor.do',
						 dataType:'json',
						 success: function(data){
						     var myObject = data;
							 var a = "<option value=''>请选择</option>";
							 for (var i = 0; i < myObject.length; i++) {
									a += "<option value=\'"+myObject[i].id+"\'>"
											+ myObject[i].name + "</option>";
							 }
							//获取添加成品菜框的颜色元素
							 top.Dialog.getDialogById("menuSmart").getElementById("productColorId").innerHTML=a;
						     $chosen.trigger("liszt:updated");
					      }
				     });
				     colorDialog.close();
				 };
				 colorDialog.show();
			}
		    
		    //新增形状
			function addShape(){	
				 top.jzts();
				 var styleDialog = new top.Dialog();
				 styleDialog.Drag=true;
				 styleDialog.Title ="新增形状";
				 styleDialog.URL = '<%=basePath%>shapeController/list.do';
				 styleDialog.Width = 770;
				 styleDialog.Height = 350;
				 styleDialog.CancelEvent = function(){ //关闭事件
					 //刷新形状
				     $.ajax({
				    	 type: "POST",
						 url: '<%=basePath%>shapeController/reloadShape.do',
						 dataType:'json',
						 success: function(data){
						     var myObject = data;
							 var a = "<option value=''>请选择</option>";
							 for (var i = 0; i < myObject.length; i++) {
									a += "<option value=\'"+myObject[i].id+"\'>"
											+ myObject[i].name + "</option>";
							 }
							//获取添加成品菜框的形状元素
							 top.Dialog.getDialogById("menuSmart").getElementById("productShapeId").innerHTML=a;
							 $chosen.trigger("liszt:updated");
					      }
				     });
				     styleDialog.close();
				 };
				 styleDialog.show();
			}
		    
		    //新增口味
			function addTaste(){	
				 top.jzts();
				 var styleDialog = new top.Dialog();
				 styleDialog.Drag=true;
				 styleDialog.Title ="新增口味";
				 styleDialog.URL = '<%=basePath%>tasteController/list.do';
				 styleDialog.Width = 770;
				 styleDialog.Height = 350;
				 styleDialog.CancelEvent = function(){ //关闭事件
					 //刷新口味
				     $.ajax({
				    	 type: "POST",
						 url: '<%=basePath%>tasteController/reloadTaste.do',
						 dataType:'json',
						 success: function(data){
						     var myObject = data;
							 var a = "<option value=''>请选择</option>";
							 for (var i = 0; i < myObject.length; i++) {
									a += "<option value=\'"+myObject[i].id+"\'>"
											+ myObject[i].name + "</option>";
							 }
							//获取添加成品菜框的口味元素
							 top.Dialog.getDialogById("menuSmart").getElementById("productTasteId").innerHTML=a;
						     $chosen.trigger("liszt:updated");
					      }
				     });
				     styleDialog.close();
				 };
				 styleDialog.show();
			}
		    
		    
		    //新增菜系
			function addStyle(){	
				 top.jzts();
				 var styleDialog = new top.Dialog();
				 styleDialog.Drag=true;
				 styleDialog.Title ="新增菜系";
				 styleDialog.URL = '<%=basePath%>styleController/list.do';
				 styleDialog.Width = 770;
				 styleDialog.Height = 350;
				 styleDialog.CancelEvent = function(){ //关闭事件
					 //刷新菜系
				     $.ajax({
				    	 type: "POST",
						 url: '<%=basePath%>styleController/reloadStyle.do',
						 dataType:'json',
						 success: function(data){
						     var myObject = data;
							 var a = "<option value=''>请选择</option>";
							 for (var i = 0; i < myObject.length; i++) {
									a += "<option value=\'"+myObject[i].id+"\'>"
											+ myObject[i].name + "</option>";
							 }
							 //获取添加成品菜框的菜系元素
							 top.Dialog.getDialogById("menuSmart").getElementById("productStyleId").innerHTML=a;
						     $chosen.trigger("liszt:updated");
					      }
				     });
				     styleDialog.close();
				 };
				 styleDialog.show();
			} 
		    
		  //新增类别
			function addCategory(){	
				 top.jzts();
				 var categoryDialog = new top.Dialog();
				 categoryDialog.Drag=true;
				 categoryDialog.Title ="新增类别";
				 categoryDialog.URL = '<%=basePath%>categoryController/list.do';
				 categoryDialog.Width = 770;
				 categoryDialog.Height = 350;
				 categoryDialog.CancelEvent = function(){ //关闭事件
					 //刷新大类
				     $.ajax({
				    	 type: "POST",
						 url: '<%=basePath%>categoryController/reloadCategory.do',
						 dataType:'json',
						 success: function(data){
						     var myObject = data;
							 var a = "<option value=''>请选择</option>";
							 for (var i = 0; i < myObject.length; i++) {
									a += "<option value=\'"+myObject[i].id+"\'>"
											+ myObject[i].name + "</option>";
							 }
							//获取添加成品菜框的类别元素
							 top.Dialog.getDialogById("menuSmart").getElementById("productCategoryId").innerHTML=a;
							 //window.parent.document.getElementById("_DialogFrame_1").contentDocument.getElementById("productCategoryId").innerHTML=a;
						     $chosen.trigger("liszt:updated");
					      }
				     });
				     categoryDialog.close();
				 };
				 categoryDialog.show();
			}
		});--%>
	});
		//保存智能配菜
		function save(){
			var result=true;
			//类别重复校验
			var c = $("select[name='categoryId']");
			//console.log("c长度为:" + (c.length));
			var cFlag = false;
			var cArry = c.slice(1, c.length);
			/* for(var i=0;i<(arry.length);i++){
				console.log("排序前"+i+"="+arry.eq(i).val());
			} */
			var cArry2 = cArry.sort(function(l,r){return $(l).val()<$(r).val()?-1:1});
			/* for(var i=0;i<(arry2.length);i++){
				console.log("排序后"+i+"="+arry2.eq(i).val());
			} */
			
			// console.log("arry长度为:" + (arry.length) +arry);
			for(var i=0;i<(cArry2.length-1);i++){
				/* console.log(i+"="+arry.eq(i).val());
			    console.log(i+1+"="+arry.eq(i+1).val());
				console.log("====================="); */  
				if(cArry2.eq(i).val() == cArry2.eq(i+1).val()){
					cFlag = true;
					break;
				}
			
			}  
			
			//hash判断重复
			//flag = isRepeat(arry);
			//alert("flag="+flag);
			if(cFlag == true){
				alert("配菜种类有重复,请重新选择");
				return ;
			}
			
			/* var c = $("select[name='categoryId']");
			var arr = jQuery.makeArray(c);
			for(var i=0;i<arr.length;i++){
				console.log(arr[i]);
			}
			if(mm(arr)==true){
				alert("配菜种类有重复,请重新选择");
			} */
			
			
			/* 
			$("select[name='categoryId']").each(function(k,v){
				console.log(v.val());
			}); */
			
			//类别份数不能为空
			//console.log("categoryCount" + $("input[name=categoryCount]"));
			
		    //类别校验
		    /* if($("#productCategoryId").val()==""){
				$("#productCategoryId").tips({
					side:3,
		            msg:'请选择类别',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#productCategoryId").focus();
				return false;
			  } */
			  
			//种类数量不能为空
			var cCount = $("input[name='categoryCount']");
			var cCountFlag = false;
			var cCountArry = cCount.slice(1, cCount.length);  
			for(var i=0;i<cCountArry.length;i++){
				console.log(cCountArry.eq(i).val());
				if(cCountArry.eq(i).val() == null || cCountArry.eq(i).val() == ""){
					cCountFlag = true;
					break;
				}
				var amount = new RegExp("^[0-9]*$");
				if(!amount.test(cCountArry.eq(i).val())){  
					cCountFlag = true;
					break;;  
				    }  
			
			}  
			if(cCountFlag == true){
				alert("请输入类别份数,且份数为数字");
				return ;
			}
			
			//菜系重复校验
			var style = $("select[name='productStyleId']");
			var styleFlag = false;
			var styleArry = style.slice(1, style.length);
			var styleArry2 = styleArry.sort(function(l,r){return $(l).val()<$(r).val()?-1:1});
			for(var i=0;i<(styleArry2.length-1);i++){
				if(styleArry2.eq(i).val() == styleArry2.eq(i+1).val()){
					styleFlag = true;
					break;
				}
			
			}  
			if(styleFlag == true){
				alert("菜系有重复,请重新选择");
				return ;
			}
			
			//形状重复校验
			var shape = $("select[name='productShapeId']");
			var shapeFlag = false;
			var shapeArry = shape.slice(1, shape.length);
			var shapeArry2 = shapeArry.sort(function(l,r){return $(l).val()<$(r).val()?-1:1});
			for(var i=0;i<(shapeArry2.length-1);i++){
				if(shapeArry2.eq(i).val() == shapeArry2.eq(i+1).val()){
					shapeFlag = true;
					break;
				}
			
			}  
			if(shapeFlag == true){
				alert("形状有重复,请重新选择");
				return ;
			}
			
			//口味重复校验
			var taste = $("select[name='productTaste Id']");
			var tasteFlag = false;
			var tasteArry = taste.slice(1, taste.length);
			var tasteArry2 = tasteArry.sort(function(l,r){return $(l).val()<$(r).val()?-1:1});
			for(var i=0;i<(tasteArry2.length-1);i++){
				if(tasteArry2.eq(i).val() == tasteArry2.eq(i+1).val()){
					tasteFlag = true;
					break;
				}
			
			}  
			if(tasteFlag == true){
				alert("口味有重复,请重新选择");
				return ;
			}
			
			//烹饪重复校验
			var cuisine = $("select[name='productCuisineId']");
			var cuisineFlag = false;
			var cuisineArry = cuisine.slice(1, cuisine.length);
			var cuisineArry2 = cuisineArry.sort(function(l,r){return $(l).val()<$(r).val()?-1:1});
			for(var i=0;i<(cuisineArry2.length-1);i++){
				if(cuisineArry2.eq(i).val() == cuisineArry2.eq(i+1).val()){
					cuisineFlag = true;
					break;
				}
			
			}  
			if(cuisineFlag == true){
				alert("烹饪有重复,请重新选择");
				return ;
			}
			
			//颜色重复校验
			var color = $("select[name='productColorId']");
			var colorFlag = false;
			var colorArry = color.slice(1, color.length);
			var colorArry2 = colorArry.sort(function(l,r){return $(l).val()<$(r).val()?-1:1});
			for(var i=0;i<(colorArry2.length-1);i++){
				if(colorArry2.eq(i).val() == colorArry2.eq(i+1).val()){
					colorFlag = true;
					break;
				}
			
			}  
			if(colorFlag == true){
				alert("颜色有重复,请重新选择");
				return ;
			}
			
			//配菜总成本不能为空
		    if($("#totalCost").val()==""){
				$("#totalCost").tips({
					side:3,
		            msg:'请输入配菜总成本',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#totalCost").focus();
				return false;
			  }
		  
		  //配菜总定价不能为空
		    if($("#totalFixedPrice").val()==""){
				$("#totalFixedPrice").tips({
					side:3,
		            msg:'请输入配菜总定价',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#totalFixedPrice").focus();
				return false;
			  }
			  
			//营养重复校验
			var n = $("select[name='nutritionId']");
			var nFlag = false;
			var nArry = n.slice(1, n.length);
			var nArry2 = nArry.sort(function(l,r){return $(l).val()<$(r).val()?-1:1});
			for(var i=0;i<(nArry2.length-1);i++){
				if(nArry2.eq(i).val() == nArry2.eq(i+1).val()){
					nFlag = true;
					break;
				}
			
			}  
			if(nFlag == true){
				alert("营养有重复,请重新选择");
				return ;
			}
			
			//营养含量不能为空
			var cContent = $("input[name='nutritionContent']");
			var cContentFlag = false;
			var cContentArry = cContent.slice(1, cContent.length);  
			for(var i=0;i<cContentArry.length;i++){
				//console.log(cCountArry.eq(i).val());
				if(cContentArry.eq(i).val() == null || cContentArry.eq(i).val() == ""){
					cContentFlag = true;
					break;
				}
				var content = new RegExp("^[0-9]*$");
				if(!content.test(cContentArry.eq(i).val())){  
					cContentFlag = true;
					break;;  
				    }   
			
			}  
			if(cContentFlag == true){
				alert("请输入营养含量,且营养为数字");
				return ;
			}
			  
		 	//午餐晚餐checkbox
		  	if (!$('#lunchCountSelect').attr('checked')) {
		  		//alert(!$('#lunchCountSelect').attr('checked'));
		  		$('#lunchCount').val("");
			}
			  
		  	if (!$('#dinnerCountSelect').attr('checked')) {
		  		//alert(!$('#dinnerCountSelect').attr('checked'));
		  		$('#dinnerCount').val("");
			}
		  	
		/*   //菜系校验
		    if($("#productStyleId").val()==""){
				$("#productStyleId").tips({
					side:3,
		            msg:'请选择菜系',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#productStyleId").focus();
				return false;
			  }
			  
		  //形状校验
		    if($("#productShapeId").val()==""){
				$("#productShapeId").tips({
					side:3,
		            msg:'请选择形状',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#productShapeId").focus();
				return false;
			  }
		  
		  //口味校验
		    if($("#productTasteId").val()==""){
				$("#productTasteId").tips({
					side:3,
		            msg:'请选择口味',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#productTasteId").focus();
				return false;
			  }
		  //烹饪校验
		    if($("#productCuisineId").val()==""){
				$("#productCuisineId").tips({
					side:3,
		            msg:'请选择烹饪',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#productCuisineId").focus();
				return false;
			  }
		  
		  //颜色校验
		    if($("#productColorId").val()==""){
				$("#productColorId").tips({
					side:3,
		            msg:'请选择颜色',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#productColorId").focus();
				return false;
			  } */
		  
		    
		/*   $("#productStyleName").val($("#productStyleId").attr("style-name"));
		  $("#productShapeName").val($("#productShapeId").attr("shape-name"));
		  $("#productTasteName").val($("#productTasteId").attr("taste-name"));
		  $("#productCuisineName").val($("#productCuisineId").attr("cuisine-name"));
		  $("#productColorName").val($("#productColorId").attr("color-name")); */
		  
		 	/* <input type="hidden" name="categoryList" id="categoryList"/>
			<input type="hidden" name="nutritionList" id="nutritionList"/>
			var categoryIds = $("select[name='categoryId']").val(); 
			var categoryCounts = $("input[name='categoryCount']").val();    
			$("input[name='username']").val()
			$("#categoryList"). */
			
			//日期选择起始日期不能大于结束日期
			var startTime = $("#fixingsStartTimeStr").val();
			var endTime = $("#fixingsEndTimeStr").val();
			
			var start=new Date(startTime.replace("-", "/").replace("-", "/"));  
		    var end=new Date(endTime.replace("-", "/").replace("-", "/"));  
		    if(end<start){  
		    	alert("起始日期不能大于结束日期");
		    	return false;
		    }  
			
			
			
		    //ajax提交form表单
		    $.ajax({
	            cache: true,
	            type: "POST",
	            url:'<%=basePath%>smart/addSmart.do',
	            data:$('#smartForm').serialize(),// 你的formid
	            async: false,
	            error: function(request) {
	                alert("输出错误,程序异常");
	            },
	            success: function(data) {
		        if (data.success == true) {
		        		alert(data.msg)
						//bootbox.alert(data.msg);
				  
					} else {
						result=false;
						bootbox.alert(data.msg);
					 
					}
		        /* $("#zhongxin").hide();
				$("#zhongxin2").show();*/
				if(result==true){
				   //只有返回成功，才会关闭当前dialog;
				 top.Dialog.close();
				}
	           }
			  });
			
		    
		}
		
		//获取配菜名
		/* function request(paras)
	    { 
	        var url = location.href; 
	        var paraString = url.substring(url.indexOf("?")+1,url.length).split("&"); 
	        var paraObj = {} 
	        for (i=0; j=paraString[i]; i++){ 
	        paraObj[j.substring(0,j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=")+1,j.length); 
	        } 
	        var returnValue = paraObj[paras.toLowerCase()]; 
	        if(typeof(returnValue)=="undefined"){ 
	        return ""; 
	        }else{ 
	        return returnValue; 
	        } 
	    } */
	    function request(name)
		{
	     	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	     	var r = window.location.search.substr(1).match(reg);
	     	if(r!=null)return  unescape(r[2]); 
	     	return null;
		}
	</script>
</body>
</html>