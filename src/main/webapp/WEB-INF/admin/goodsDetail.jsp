<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html class="no-js">
    
    <head>
        <title>Admin Home Page</title>
        <!-- Bootstrap -->
        <link href="<%=path%>/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="<%=path%>/resource/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="<%=path%>/resource/vendors/easypiechart/jquery.easy-pie-chart.css" rel="stylesheet" media="screen">
        <link href="<%=path%>/resource/assets/styles.css" rel="stylesheet" media="screen">
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="<%=path%>/resource/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    	
    </head>
    
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">后台管理admin</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> 
                                	<i class="icon-user"></i> admin.shop <i class="caret"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="<%=path%>/admin/logout">Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3" id="sidebar">
                    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                         
                        <li>
                            <a href="<%=path%>/admin"><i class="icon-chevron-right"></i> Dashboard</a>
                        </li>
                        <li  >
                            <a href="<%=path%>/admin/category"><span class="badge badge-success pull-right">3</span> 分类</a>
                        </li>
                          <li >
                            <a href="<%=path%>/admin/goods"><span class="badge badge-success pull-right">11</span> 商品</a>
                        </li>
                        <li class="active">
                            <a href="<%=path%>/admin/goodsDetail"><span class="badge badge-success pull-right">23</span> 库存</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">27</span> 订单</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">134</span> 用户</a>
                        </li>
                        
                    </ul>
                </div>
                
                <!--/span-->
                <div class="span9" id="content">
                	<div id="c_update_state" class="alert alert-success">
						<button class="close" data-dismiss="alert">&times;</button>
						<!--<strong>Success!</strong>-->
					</div>        
      		    	<div class="row-fluid">
      		    		
      		    		<!-- block -->
                        <div class="block" id="new_goods_detail">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">新增商品库存</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <form class="form-horizontal">
                                      <fieldset>
                                        <!-- <legend>Form Components</legend> -->
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">分类</label>
                                          <div class="controls">
                                          	<select id="selectNewCategory" class="chzn-select">
                                          	</select>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">商品</label>
                                          <div class="controls">
                                          	<select id="selectNewGoods" class="chzn-select">
                                          	</select>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">简介</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="gd_new_shortinfo"  data-provide="typeahead" data-items="4" >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">单价</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="gd_new_price"  data-provide="typeahead" data-items="4" >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">库存</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="gd_new_number"  data-provide="typeahead" data-items="4" >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="select01">状态</label>
                                          <div class="controls">
                                            <select id="gd_new_select_opoen" class="chzn-select">
                                            <option value ="1">开</option>
						 					<option value ="0">关</option>
                                            </select>
                                          </div>
                                        </div>
                                       
                                        <div class="control-group">
                                          <label class="control-label" for="fileInput">图片</label>
                                          <div class="controls">
                                          	<img  id="gd_new_img" onclick="click_gd_new_img_input()"  src="<%=path%>/resource/images/eg.jpg"  height="150" width="150"/>
                                            <input id="gd_new_img_input" type="file" style="display:none" >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="textarea2">详情</label>
                                          <div class="controls" id="gd_new_detail_div_editor">
                                          	
                                            <textarea id="gd_new_detail_editor" class="input-xlarge textarea" placeholder="Enter text ..." style="width: 810px; height: 200px"></textarea>
                                          	
                                          </div>
                                        </div>
                                        <div class="form-actions">
                                          <button class="btn btn-success" onclick="save_new_gd()">保存</button>
                                          <button type="reset" class="btn">重置</button>
                                          <button onclick="close_new_gd()" class="btn">取消</button>
                                        </div>
                                      </fieldset>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <!-- /block -->
      		    		
      		    		<!-- block -->
                        <div class="block" id="update_goods_detail">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">修改商品库存</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <form class="form-horizontal">
                                      <fieldset>
                                        <!-- <legend>Form Components</legend> -->
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">ID</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="gd_id"  data-provide="typeahead" data-items="4" disabled> 
                                                        <!-- <p class="help-block">Start typing to activate auto complete!</p> -->
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">分类</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="gd_category"  data-provide="typeahead" data-items="4" disabled> 
                                                        <!-- <p class="help-block">Start typing to activate auto complete!</p> -->
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">商品</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="gd_goods"  data-provide="typeahead" data-items="4" disabled >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">简介</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="gd_shortinfo"  data-provide="typeahead" data-items="4" >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">单价</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="gd_price"  data-provide="typeahead" data-items="4" >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">库存</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="gd_number"  data-provide="typeahead" data-items="4" >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="select01">状态</label>
                                          <div class="controls">
                                            <select id="gd_select_opoen" class="chzn-select">
                                            <option value ="1">开</option>
						 					<option value ="0">关</option>
                                            </select>
                                          </div>
                                        </div>
                                       
                                        <div class="control-group">
                                          <label class="control-label" for="fileInput">图片</label>
                                          <div class="controls">
                                          	<img  id="gd_img" onclick="click_gd_img_input()"  src="<%=path%>/resource/images/eg.jpg"  height="150" width="150"/>
                                            <input id="gd_img_input" type="file" style="display:none" >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="textarea2">详情</label>
                                          <div class="controls" id="gd_detail_div_editor">
                                          	
                                            <textarea id="gd_detail_editor" class="input-xlarge textarea" placeholder="Enter text ..." style="width: 810px; height: 200px"></textarea>
                                          	
                                          </div>
                                        </div>
                                        <div class="form-actions">
                                          <button class="btn btn-success" onclick="save_update_gd()">保存</button>
                                          <button type="reset" class="btn">重置</button>
                                          <button onclick="close_update_gd()" class="btn">取消</button>
                                        </div>
                                      </fieldset>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <!-- /block -->
      		    	
                        <!-- block -->
                        <div class="block" id="listGoodsDetail">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">商品库存管理</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                	<!---->
                                	<div class="table-toolbar">
                                      <div class="btn-group">
                                         <a href="#"><button class="btn btn-success" onclick="newGoodsDetail()" >添加商品<i class="icon-plus icon-white"></i></button></a>
                                      </div>
                                    </div>
                                      
  									<table class="table table-hover" id="example2">
						              <thead>
						                <tr>
						                  <th>#id</th>
						                  <th>图片</th>
						                  <th>类名</th>
						                  <th>品名</th>
						                  <th>简介</th>
						                  <th>单价</th>
						                  <th>库存</th>
						                  <!-- <th>详情</th> -->
						                  <th>状态</th>
						                  <th>时间</th>
						                  <th>操作</th>
						                </tr>
						              </thead>
						              <tbody id="goodsDetail_list">
						              <!-- 
						                <tr>
						                  <td>1</td>
						                  <td>url_pic</td>
						                  <td>蔬菜</td>
						                  <td>大白菜</td>
						                  <td>3斤只要11.2元</td>
						                  <td>11.2</td>
						                  <td>102</td>
						                  <td>1</td>
						                  <td>2017-4-9:12:23</td>
						                  <td><a href="#" onclick="updateGoods(this)">修改</a></td>
						                </tr>
						       		  -->
						              </tbody>
						            </table>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->  
                        
                    </div>
                </div>
            </div>
        </div>

        <!--/.fluid-container-->
        <script src="<%=path%>/resource/vendors/jquery-1.9.1.min.js"></script>
        <script src="<%=path%>/resource/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=path%>/resource/vendors/easypiechart/jquery.easy-pie-chart.js"></script>
        <script src="<%=path%>/resource/assets/scripts.js"></script>
        
     	<link href="<%=path%>/resource/vendors/wysiwyg/bootstrap-wysihtml5.css" rel="stylesheet" media="screen">
        <script src="<%=path%>/resource/vendors/wysiwyg/wysihtml5-0.3.0.js"></script>
        <script src="<%=path%>/resource/vendors/wysiwyg/bootstrap-wysihtml5.js"></script>
        <script>
        $(function() {
        	
        	$("#c_update_state").hide();
        	$("#update_goods_detail").hide();
        	$("#new_goods_detail").hide();
            $.post(
  			 "<%=path%>/admin/GoodsDetailData",
  			 {},
  			 function(result){
  			 	var data = JSON.parse(result);
  			 	console.log(data);
				var s = "";
				for(var i=0;i<data.listGoods.length;i++){
					var t = "";
					for(var j=0;j<data.listGoods[i].listGoodsDetail.length;j++){
						gd_data = " g_name="+data.listGoods[i].name+
							      //" g_id="+data.listGoods[i].id+
							      " c_name="+data.listGoods[i].category.name+
							      //" c_id="+data.listGoods[i].category.id+
							      " gd_id="+data.listGoods[i].listGoodsDetail[j].id+
							      " gd_short_info="+data.listGoods[i].listGoodsDetail[j].short_info+
							      " gd_price="+data.listGoods[i].listGoodsDetail[j].price+
							      " gd_number="+data.listGoods[i].listGoodsDetail[j].number+
							      " gd_open="+data.listGoods[i].listGoodsDetail[j].open+
							      " gd_pic="+data.listGoods[i].listGoodsDetail[j].pic;
							      //" gd_detail_info= "+data.listGoods[i].listGoodsDetail[j].detail_info;
							  
						t =t +"<tr id=gd_"+data.listGoods[i].listGoodsDetail[j].id+
						      "><td>"+data.listGoods[i].listGoodsDetail[j].id+
							  "</td><td><img src="+data.listGoods[i].listGoodsDetail[j].pic+
							  " height='80' width='80'/></td><td>"+data.listGoods[i].category.name+
							  "</td><td>"+data.listGoods[i].name+
							  "</td><td>"+data.listGoods[i].listGoodsDetail[j].short_info+
							  "</td><td>"+data.listGoods[i].listGoodsDetail[j].price+
							  "</td><td>"+data.listGoods[i].listGoodsDetail[j].number+
							  //"</td><td>"+data.listGoods[i].listGoodsDetail[j].detail_info+
							  "</td><td>"+data.listGoods[i].listGoodsDetail[j].open+
							  "</td><td>"+data.listGoods[i].listGoodsDetail[j].create_date+
							  "<td><a href='#' "+gd_data+" onclick='updateGoodsDetail(this)'>修改</a></td></tr>";
					}
					s = s+t;
				}
				$("#goodsDetail_list").append(s);		
				
				         
  			});
  			
  			//修改，选择图片，并上传，预览
  			$("#gd_img_input").change(function(){
  				console.log("img...");
  				var file = this.files[0] ? this.files[0] : null;
  				if (!file) { return false; }
  				//console.log(file);
  				var formData = new FormData();
            	formData.append("file", file);
            	formData.append("filePart", "goodsDetail");
            	//上传
            	$.ajax({
	                url : "<%=path%>/upload/imageUpload",
	                type : "POST",
	                cache : false,
	                enctype:"multipart/form-data",
	                data : formData,
	                processData : false,
	                contentType : false
            	}).done(function(result) {
            		var data = JSON.parse(result);
            		console.log(data);
            		//预览
            		//$("#upload_ed_id_img").val(data.fileName);
            		$("#gd_img").attr("src","<%=path%>/uploadFiles/"+data.fileName);
            	});
			});
			
			//新增
			$("#gd_new_img_input").change(function(){
  				console.log("new img...");
  				var file = this.files[0] ? this.files[0] : null;
  				if (!file) { return false; }
  				var formData = new FormData();
            	formData.append("file", file);
            	formData.append("filePart", "goodsDetail");
            	//上传
            	$.ajax({
	                url : "<%=path%>/upload/imageUpload",
	                type : "POST",
	                cache : false,
	                enctype:"multipart/form-data",
	                data : formData,
	                processData : false,
	                contentType : false
            	}).done(function(result) {
            		var data = JSON.parse(result);
            		console.log(data);
            		//预览
            		$("#gd_new_img").attr("src","<%=path%>/uploadFiles/"+data.fileName);
            	});
			});
			
			// 联动分类，选择商品
			$("#selectNewCategory").change(function(){
				var categroyId = $("#selectNewCategory").val();
				//console.log(categroyId);
				$.post(
  			 		"<%=path%>/admin/getGoodsByCategroyId",
  			 		{"id":categroyId},
  			 		function(result){
  			 			var data = JSON.parse(result);
  			 			//console.log(data);
  			 			var s = "";
						$("#selectNewGoods").empty();
						for(var i=0;i<data.list_goods.length;i++){
							if (data.list_goods[i].open=="1"){
								s = s+"<option value ="+data.list_goods[i].id+">"+data.list_goods[i].name+"</option>";	
							}
						}
						$("#selectNewGoods").append(s);	
  			 		});
			});
			
        });
        function click_gd_img_input(){
        	$("#gd_img_input").click(); 
        }
        
        function click_gd_new_img_input(){
        	$("#gd_new_img_input").click(); 
        }
        
        function close_update_gd(){
        	$("#update_goods_detail").hide();
        }
        
        function close_new_gd(){
        	$("#new_goods_detail").hide();
        }
 
        function updateGoodsDetail(obj){
        	$("#update_goods_detail").hide();
        	var thisObj=$(obj);
        	$("#gd_id").val(thisObj.attr("gd_id"));
        	$("#gd_goods").val(thisObj.attr("g_name"));
        	$("#gd_category").val(thisObj.attr("c_name"));
        	$("#gd_shortinfo").val(thisObj.attr("gd_short_info"));
        	$("#gd_price").val(thisObj.attr("gd_price"));
        	$("#gd_number").val(thisObj.attr("gd_number"));
        	$("#gd_select_opoen").val(thisObj.attr("gd_open"));
        	$("#gd_img").attr("src",thisObj.attr("gd_pic"));
        	//console.log(thisObj.attr("gd_detail_info"));
      		//$("#gd_detail_editor").val(thisObj.attr("gd_detail_info"));
      		$.post(
  			 	"<%=path%>/admin/getGoodsDetail",
  			 	{"id":thisObj.attr("gd_id")},
  			 	function(result){
  			 		var data = JSON.parse(result);
  			 		//console.log(data);
  			 		//console.log(data.data.detail_info);
  			 		$("#gd_detail_div_editor").empty();                 	
  			 		$("#gd_detail_div_editor").append("<textarea id='gd_detail_editor' class='input-xlarge textarea' placeholder='Enter text ...' style='width: 810px; height: 400px'></textarea>");
  			 		$("#gd_detail_editor").val(data.data.detail_info);
  			 		$("#gd_detail_editor").wysihtml5();  
  			 });
        	$("#update_goods_detail").show();
        	$('body,html').animate({ scrollTop: 0 }, 400);
        }
        
        //保存修改信息
        function save_update_gd(){
        	var gd_id = $("#gd_id").val();
        	var gd_shortinfo = $("#gd_shortinfo").val();
        	var gd_price = $("#gd_price").val();
        	var gd_open = $("#gd_select_opoen").val();
        	var gd_number = $("#gd_number").val();
        	var gd_pic = $("#gd_img").attr("src");
        	var gd_detail = $("#gd_detail_editor").val();
        	console.log(gd_detail);
        	var g_name = $("#gd_goods").val();
        	var c_name = $("#gd_category").val();
        	$.post(
  			 "<%=path%>/admin/goodsDetail_update",
  			  {
  			  "id":gd_id,
  			  "price":gd_price,
  			  "short_info":gd_shortinfo,
  			  "number":gd_number,
  			  "detail_info":gd_detail,
  			  "open":gd_open,
  			  "pic":gd_pic,
  			  },
  			 function(result){
  			 	console.log(result);
  			 	var id = "gd_"+gd_id;
  			 	$("#"+id).empty();
  			 	
  			 	g_data =  " g_name="+g_name+
						  " c_name="+c_name+
						  " gd_id="+gd_id+
						  " gd_short_info="+gd_shortinfo+
						  " gd_price="+gd_price+
						  " gd_number="+gd_number+
						  " gd_open="+gd_open+
						  " gd_pic="+gd_pic;
						 // " gd_detail_info='+gd_detai+';
						  			  
				var s = "<td>"+gd_id+
							  "</td><td><img src="+gd_pic+
							  " height='80' width='80'/></td><td>"+c_name+
							  "</td><td>"+g_name+
							  "</td><td>"+gd_shortinfo+
							  "</td><td>"+gd_price+
							  "</td><td>"+gd_number+
							  //"</td><td>"+data.listGoods[i].listGoodsDetail[j].detail_info+
							  "</td><td>"+gd_open+
							  "</td><td>刚刚修改！</td><td><a href='#' "+gd_data+" onclick='updateGoodsDetail(this)'>修改</a></td>";
				
  			 	$("#"+id).append(s);
  			 	$("#c_update_state").append("修改并保存商品 库存数据ID："+gd_id+" 成功！<br/>");
  			 	$("#update_goods_detail").hide();
  			 	$("#c_update_state").show();
  			 });
        }
        
        function newGoodsDetail(){
        	$.post(
  			 "<%=path%>/admin/categoryData",
  			 {},
  			 function(result){
  			 	var data = JSON.parse(result);
				var s = "";
				$("#selectNewCategory").empty();
				for(var i=0;i<data.list_categroy.length;i++){
					if (data.list_categroy[i].open=="1"){
						if (i==1){
							s = s+"<option value ="+data.list_categroy[i].id+">"+data.list_categroy[i].name+"</option>";	
						}else{
							s = s+"<option value ="+data.list_categroy[i].id+">"+data.list_categroy[i].name+"</option>";	
						}
					}
					
				}
				$("#selectNewCategory").append(s);			  
  			 });
  			$("#gd_new_detail_div_editor").empty();                 	
  			$("#gd_new_detail_div_editor").append("<textarea id='gd_new_detail_editor' class='input-xlarge textarea' placeholder='Enter text ...' style='width: 810px; height: 400px'></textarea>");
  			$("#gd_new_detail_editor").wysihtml5();  
        	$("#new_goods_detail").show();
        	$('body,html').animate({ scrollTop: 0 }, 400);
        }
        
        //保存新增商品信息
        function save_new_gd(){
        	var gd_shortinfo = $("#gd_new_shortinfo").val();
        	var gd_price = $("#gd_new_price").val();
        	var gd_open = $("#gd_new_select_opoen").val();
        	var gd_number = $("#gd_new_number").val();
        	var gd_pic = $("#gd_new_img").attr("src");
        	var gd_detail = $("#gd_new_detail_editor").val();
        	var gd_goods_id = $("#selectNewGoods").val();
        	var g_name = $("#selectNewGoods").find("option:selected").text();
        	var c_name = $("#selectNewCategory").find("option:selected").text();
        	$.post(
  			 "<%=path%>/admin/goodsDetail_save",
  			  {
  			  "goods.id":gd_goods_id,
  			  "price":gd_price,
  			  "short_info":gd_shortinfo,
  			  "number":gd_number,
  			  "detail_info":gd_detail,
  			  "open":gd_open,
  			  "pic":gd_pic,
  			  },
  			 function(result){
  			 	var data = JSON.parse(result);
  			 	var gd_id = data.gd.id;
  			 	var tr_id = "gd_"+gd_id;
  			 	
  			 	g_data =  " g_name="+g_name+
						  " c_name="+c_name+
						  " gd_id="+gd_id+
						  " gd_short_info="+gd_shortinfo+
						  " gd_price="+gd_price+
						  " gd_number="+gd_number+
						  " gd_open="+gd_open+
						  " gd_pic="+gd_pic;
	  			  
				var s = "<tr id="+tr_id+
							 "<td>"+gd_id+
							  "</td><td><img src="+gd_pic+
							  " height='80' width='80'/></td><td>"+c_name+
							  "</td><td>"+g_name+
							  "</td><td>"+gd_shortinfo+
							  "</td><td>"+gd_price+
							  "</td><td>"+gd_number+
							  //"</td><td>"+data.listGoods[i].listGoodsDetail[j].detail_info+
							  "</td><td>"+gd_open+
							  "</td><td>刚刚新增！</td><td><a href='#' "+gd_data+" onclick='updateGoodsDetail(this)'>修改</a></td></tr>";
				
  			 	$("#goodsDetail_list").append(s);
  			 	$("#c_update_state").append("新增并保存商品库存ID： "+gd_id+" 数据成功！<br/>");
  			 	$("#c_update_state").show();
 				$("#new_goods_detail").hide();
  			 });
        }
        </script>
    </body>
</html>