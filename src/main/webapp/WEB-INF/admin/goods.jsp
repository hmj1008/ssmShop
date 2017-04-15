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
                          <li class="active">
                            <a href="<%=path%>/admin/goods"><span class="badge badge-success pull-right">11</span> 商品</a>
                        </li>
                        <li>
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
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">商品</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                	      <div class="table-toolbar">
                                      <div class="btn-group">
                                         <a href="#"><button class="btn btn-success" onclick="newGoods()" >添加商品<i class="icon-plus icon-white"></i></button></a>
                                      </div>
                                   </div>
  									<table class="table table-hover" id="example2">
						              <thead>
						                <tr>
						                  <th>#id</th>
						                  <th>图片</th>
						                  <th>商品名</th>
						                  <th>简介</th>
						                  <th>状态</th>
						                  <th>类别</th>
						                  <th>创建时间</th>
						                  <th>操作</th>
						                </tr>
						              </thead>
						              <tbody id="goods_list">
						              <!--
						                <tr>
						                  <td>蔬菜</td>
						                  <td>1</td>
						                  <td>大白菜</td>
						                  <td>来自大山的大白菜</td>
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
        
        <!-- 修改 弹框 -->
        <div class="modal" id="mymodal">
            <div class="modal-dialog">
                <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改商品信息</h4>
              </div>
              <form action="#" method="POST">
                <div class="modal-body">
                	编号:
                	<input type="text"  name="name" id="g_id" class="form-control" disabled />
                	<br/>
                	分类:
                	<select id="selectCategory">
					</select>
					<br/>
                	名称:
                    <input type="text"  name="name" id="g_name" class="form-control" />
                    <br/>
                                                           简介:
                    <input type="text"  name="name" id="g_info" class="form-control" />
                    <br/>
                  	  状态:
                  	  <select id="selectGoodsOpen">
						  <option value ="1">开</option>
						  <option value ="0">关</option>
					 </select>
                    <br/>
                    <div style="position: absolute;margin-left: 348px; margin-top: -170px;">
                    	<img  id="goods_update_img" onclick="F_Open_dialog()"  src="<%=path%>/resource/images/eg.jpg"  height="150" width="150"/>
                    </div>
                    <input type="file" id="goods_update_img_input" style="display:none">
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                  <button type="button" class="btn btn-primary" onclick="saveGoods()">保存</button>
                </div>
              </form>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
         
        <!-- 新增弹框 -->
        <div class="modal" id="mymodal_new">
            <div class="modal-dialog">
                <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">新增商品</h4>
              </div>
             <form action="#" method="POST">
                <div class="modal-body">
                	分类:
                	<select id="selectNewCategory">
					</select>
					<br/>
                	名称:
                    <input type="text"  name="name" id="g_new_name" class="form-control" />
                    <br/>
                                                           简介:
                    <input type="text"  name="name" id="g_new_info" class="form-control" />
                    <br/>
                  	  状态:
                  	  <select id="selectNewGoodsOpen">
						  <option value ="1">开</option>
						  <option value ="0">关</option>
					 </select>
                    <br/>
                    <div style="position: absolute;margin-left: 348px; margin-top: -143px;">
                    	<img  id="goods_new_img" onclick="F_Open_new_dialog()"  src="<%=path%>/resource/images/eg.jpg"  height="150" width="150"/>
                    </div>
                    <input type="file" id="goods_new_img_input" style="display:none">
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                  <button type="button" class="btn btn-primary" onclick="saveNewGoods()">保存</button>
                </div>
              </form>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->   
        
        <!--/.fluid-container-->
        <script src="<%=path%>/resource/vendors/jquery-1.9.1.min.js"></script>
        <script src="<%=path%>/resource/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=path%>/resource/vendors/easypiechart/jquery.easy-pie-chart.js"></script>
        <script src="<%=path%>/resource/assets/scripts.js"></script>
        <script>
        $(function() {
        	$("#c_update_state").hide();
        	$("#mymodal").modal("toggle");
        	$("#mymodal").modal("hide");
        	$("#mymodal_new").modal("toggle");
        	$("#mymodal_new").modal("hide");
            // Easy pie charts
            //$('.chart').easyPieChart({animate: 1000});
            $.post(
  			 "<%=path%>/admin/GoodsData",
  			 {},
  			 function(result){
  			 	//console.log(result);
  			 	var data = JSON.parse(result);
  			 	console.log(data);
  			 	//console.log(data.list_categroy);
  			 	//console.log(data.list_categroy[0].name);
				var s = "";
				for(var i=0;i<data.list_goods.length;i++){
				
					g_data =  "id="+data.list_goods[i].id+
							  " name="+data.list_goods[i].name+
							  " c_name="+data.list_goods[i].category.name+
							  " c_id="+data.list_goods[i].category.id+
							  " g_open="+data.list_goods[i].open+
							  " pic="+data.list_goods[i].pic+
							  " short_info="+data.list_goods[i].short_info;
							  
					s = s+"<tr id=g_"+data.list_goods[i].id+"><td>"+data.list_goods[i].id+"</td><td><img src="+data.list_goods[i].pic+" height='80' width='80'/></td><td>"+data.list_goods[i].name+"</td><td>"+data.list_goods[i].short_info+"</td><td>"+data.list_goods[i].open+"</td><td>"+data.list_goods[i].category.name+"</td><td>"+data.list_goods[i].create_date+"</td><td><a href='#'"+g_data+" onclick='updateGoods(this)'>修改</a></td> </tr>";
				}
				$("#goods_list").append(s);		               
  			});
  			
  			//修改，选择图片，并上传，预览
  			$("#goods_update_img_input").change(function(){
  				console.log("img...");
  				var file = this.files[0] ? this.files[0] : null;
  				if (!file) { return false; }
  				//console.log(file);
  				var formData = new FormData();
            	formData.append("file", file);
            	formData.append("filePart", "goods");
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
            		$("#goods_update_img").attr("src","<%=path%>/uploadFiles/"+data.fileName);
            	});
			});
			
			//新增
			$("#goods_new_img_input").change(function(){
  				console.log("img...");
  				var file = this.files[0] ? this.files[0] : null;
  				if (!file) { return false; }
  				var formData = new FormData();
            	formData.append("file", file);
            	formData.append("filePart", "goods");
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
            		$("#goods_new_img").attr("src","<%=path%>/uploadFiles/"+data.fileName);
            	});
			});
			
        });
        function F_Open_dialog(){
        	$("#goods_update_img_input").click(); 
        }
        function F_Open_new_dialog(){
        	$("#goods_new_img_input").click();
        }
        function updateGoods(obj){
        	var thisObj=$(obj);
        	$("#g_id").val(thisObj.attr("id"));
        	$("#g_name").val(thisObj.attr("name"));
        	$("#g_info").val(thisObj.attr("short_info"));
        	console.log("商品状态："+thisObj.attr("g_open"));
        	$("#selectGoodsOpen").val(thisObj.attr("g_open"));
        	$("#goods_update_img").attr("src",thisObj.attr("pic"));
        	$.post(
  			 "<%=path%>/admin/categoryData",
  			 {},
  			 function(result){
  			 	var data = JSON.parse(result);
				var s = "";
				$("#selectCategory").empty();
				for(var i=0;i<data.list_categroy.length;i++){
					if (data.list_categroy[i].open=="1"){
						if (data.list_categroy[i].id == thisObj.attr("c_id")){
							s = s+"<option selected value ="+data.list_categroy[i].id+">"+data.list_categroy[i].name+"</option>";
						}else{
							s = s+"<option value ="+data.list_categroy[i].id+">"+data.list_categroy[i].name+"</option>";
						}
						
					}
				}
				$("#selectCategory").append(s);			  
  			 });
        	$("#mymodal").modal("toggle");
        }
        
        //保存修改信息
        function saveGoods(){
        	var goods_id = $("#g_id").val();
        	var goods_name = $("#g_name").val();
        	var goods_info = $("#g_info").val();
        	var goods_open = $("#selectGoodsOpen").val();
        	var goods_category_id = $("#selectCategory").val();
        	var goods_pic = $("#goods_update_img").attr("src");
        	var goods_category_name = $("#selectCategory").find("option:selected").text();
        	$.post(
  			 "<%=path%>/admin/goods_update",
  			  {
  			  "id":goods_id,
  			  "name":goods_name,
  			  "short_info":goods_info,
  			  "category.id":goods_category_id,
  			  "open":goods_open,
  			  "pic":goods_pic
  			  },
  			 function(result){
  			 	var id = "g_"+goods_id;
  			 	$("#"+id).empty();
  			 	
  			 	g_data =  "id="+goods_id+
							  " name="+goods_name+
							  " c_name="+goods_category_name+
							  " c_id="+goods_category_id+
							  " g_open="+goods_open+
							  " pic="+goods_pic+
							  " short_info="+goods_info;
				var s = "";			  
				s = s+"<td>"+goods_id+"</td><td><img src="+goods_pic+" height='80' width='80'/></td><td>"+goods_name+"</td><td>"+goods_info+"</td><td>"+goods_open+"</td><td>"+goods_category_name+"</td><td>刚修改</td><td><a href='#'"+g_data+" onclick='updateGoods(this)'>修改</a></td>";
				
  			 	$("#"+id).append(s);
  			 	$("#c_update_state").append("修改并保存商品 "+goods_name+" 数据成功！<br/>");
  			 	$("#c_update_state").show();
  			 	$("#mymodal").modal("toggle");
  			 	console.log(result);
  			 });
        }
        
        function newGoods(){
        	$.post(
  			 "<%=path%>/admin/categoryData",
  			 {},
  			 function(result){
  			 	var data = JSON.parse(result);
				var s = "";
				$("#selectNewCategory").empty();
				for(var i=0;i<data.list_categroy.length;i++){
					if (data.list_categroy[i].open=="1"){
						s = s+"<option value ="+data.list_categroy[i].id+">"+data.list_categroy[i].name+"</option>";	
					}
				}
				$("#selectNewCategory").append(s);			  
  			 });
        	$("#mymodal_new").modal("toggle");
        }
        
        //保存新增商品信息
        function saveNewGoods(){
        	//var goods_id = $("#g_id").val();
        	var goods_name = $("#g_new_name").val();
        	var goods_info = $("#g_new_info").val();
        	var goods_open = $("#selectNewGoodsOpen").val();
        	var goods_category_id = $("#selectNewCategory").val();
        	var goods_pic = $("#goods_new_img").attr("src");
        	var goods_category_name = $("#selectNewCategory").find("option:selected").text();
        	$.post(
  			 "<%=path%>/admin/goods_save",
  			  {
  			  "name":goods_name,
  			  "short_info":goods_info,
  			  "category.id":goods_category_id,
  			  "open":goods_open,
  			  "pic":goods_pic
  			  },
  			 function(result){
  			 	var data = JSON.parse(result);
  			 	var goods_id = data.goods.id;
  			 	var id = "g_"+goods_id;
  			 	g_data = "id="+goods_id+
						 " name="+goods_name+
						 " c_name="+goods_category_name+
						 " c_id="+goods_category_id+
						 " g_open="+goods_open+
						 " pic="+goods_pic+
						 " short_info="+goods_info;
				var s = "";			  
				s = s+"<tr id="+id+ "><td>"+goods_id+"</td><td><img src="+goods_pic+" height='80' width='80'/></td><td>"+goods_name+"</td><td>"+goods_info+"</td><td>"+goods_open+"</td><td>"+goods_category_name+"</td><td>刚新增</td><td><a href='#'"+g_data+" onclick='updateGoods(this)'>修改</a></td>";
				
  			 	$("#goods_list").append(s);
  			 	$("#c_update_state").append("新增并保存商品 "+goods_name+" 数据成功！<br/>");
  			 	$("#c_update_state").show();
  			 	$("#mymodal_new").modal("toggle");
  			 	console.log(result);
  			 });
        }
        </script>
    </body>

</html>