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
                        <li  class="active">
                            <a href="<%=path%>/admin/category"><span class="badge badge-success pull-right">3</span> 分类</a>
                        </li>
                          <li>
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
                                <div class="muted pull-left">商品分类</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                	      <div class="table-toolbar">
                                      <div class="btn-group">
                                         <a href="#"><button class="btn btn-success" onclick="newCategroy()" >添加分类<i class="icon-plus icon-white"></i></button></a>
                                      </div>
                                   </div>
  									<table class="table table-hover" id="example2">
						              <thead>
						                <tr>
						                  <th>#id</th>
						                  <th>分类名</th>
						                  <th>是否关闭</th>
						                  <th>操作</th>
						                </tr>
						              </thead>
						              <tbody id="categroty_list">
						              <!-- 
						                <tr>
						                  <td>1</td>
						                  <td>蔬菜</td>
						                  <td>开</td>
						                  <td><a href="#">修改</a></td>
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
        
        <!-- 修改分类 弹框 -->
        <div class="modal" id="mymodal">
            <div class="modal-dialog">
                <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改分类信息</h4>
              </div>
              <form action="#" method="POST">
                <div class="modal-body">
                	类编号：
                	<input type="text"  name="name" id="c_id" class="form-control" disabled />
                	<br/>
                	分类名：
                    <input type="text"  name="name" id="c_name" class="form-control" />
                    <br/>
                  	  开或关：
                  	  <select id="selectC_open">
						  <option value ="1">开</option>
						  <option value ="0">关</option>
					 </select>
                    <br/>
                    
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                  <button type="button" class="btn btn-primary" onclick="saveCategroy()">保存</button>
                </div>
              </form>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
         
        <!-- 新增分类弹框 -->
        <div class="modal" id="mymodal_new">
            <div class="modal-dialog">
                <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">新增分类信息</h4>
              </div>
              <form action="#" method="POST">
                <div class="modal-body">
                	<br/>
                	分类名：
                    <input type="text"  name="name" id="c_new_name" class="form-control" />
                    <br/>
                  	  开或关：
                  	  <select id="selectC_new_open">
						  <option value ="1">开</option>
						  <option value ="0">关</option>
					 </select>
                    <br/>
                    
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                  <button type="button" class="btn btn-primary" onclick="saveNewCategroy()">保存</button>
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
  			 "<%=path%>/admin/categoryData",
  			 {},
  			 function(result){
  			 	//console.log(result);
  			 	var data = JSON.parse(result);
  			 	//console.log(data);
  			 	//console.log(data.list_categroy);
  			 	//console.log(data.list_categroy[0].name);
				var s = "";
				for(var i=0;i<data.list_categroy.length;i++){
					s = s+"<tr id=c_"+data.list_categroy[i].id+"><td>"+data.list_categroy[i].id+"</td><td>"+data.list_categroy[i].name+"</td><td>"+data.list_categroy[i].open+"</td><td><a href='#' id="+data.list_categroy[i].id+ " name="+data.list_categroy[i].name+" open="+data.list_categroy[i].open+" onclick='updateCategroy(this)'>修改</a></td> </tr>";
				}
				$("#categroty_list").append(s);		               
  			});
        });
        
        function updateCategroy(obj){
        	var thisObj=$(obj);
        	$("#c_id").val(thisObj.attr("id"));
        	$("#c_name").val(thisObj.attr("name"));
        	$("#selectC_open").val(thisObj.attr("open"));
        	console.log(thisObj.attr("open"));
        	$("#mymodal").modal("toggle");
        }
        
        function saveCategroy(){
        	console.log("svae");
        	var c_id = $("#c_id").val();
        	var c_name = $("#c_name").val();
        	var c_open = $("#selectC_open").val();
        	$.post(
  			 "<%=path%>/admin/category_update",
  			 {"id":c_id,"name":c_name,"open":c_open},
  			 function(result){
  			 	var id = "c_"+c_id
  			 	$("#"+id).empty();
  			 	var s = "<td>"+c_id+"</td><td>"+c_name+"</td><td>"+c_open+"</td><td><a href='#' id="+c_id+ " name="+c_name+" onpen="+c_open+" onclick='updateCategroy(this)'>修改</a></td>"
  			 	$("#"+id).append(s);
  			 	$("#c_update_state").append("保存分类 "+c_name+" 数据成功！<br/>");
  			 	$("#c_update_state").show();
  			 	$("#mymodal").modal("toggle");
  			 	console.log(result);
  			 });
        }
        
        function newCategroy(){
        	$("#mymodal_new").modal("toggle");
        }
        
        function saveNewCategroy(){
        	var c_new_name = $("#c_new_name").val();
        	var c_new_open = $("#selectC_new_open").val();
        	$.post(
  			 "<%=path%>/admin/category_save",
  			 {"name":c_new_name,"open":c_new_open},
  			 function(result){
  			 	var data = JSON.parse(result);
  			 	var s = "<tr><td>"+data.category.id+"</td><td>"+data.category.name+"</td><td>"+data.category.open+"</td><td><a href='#' id="+data.category.id+ " name="+data.category.name+" onpen="+data.category.open+" onclick='updateCategroy(this)'>修改</a></td></tr>"
  			 	$("#categroty_list").append(s);
  			 	$("#c_update_state").append("新增分类 "+data.category.name+" 数据成功！<br/>");
  			 	$("#c_update_state").show();
  			 	$("#mymodal_new").modal("toggle");
  			 	//console.log(data);
  			 });
        }
        </script>
    </body>

</html>