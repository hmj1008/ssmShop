<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>Admin Login</title>
    <!-- Bootstrap -->
    <link href="<%=path%>/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=path%>/resource/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="<%=path%>/resource/assets/styles.css" rel="stylesheet" media="screen">
     <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="<%=path%>/resource/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
  </head>
  <body id="login">
    <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">请登录</h2>
        <input id="name" type="text" class="input-block-level" placeholder="Email address">
        <input id="password" type="password" class="input-block-level" placeholder="Password">
        <!-- 
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
         -->
        <button class="btn btn-large btn-primary" type="submit" onclick="login()">Sign in</button>
      </form>

    </div> <!-- /container -->
    <script src="<%=path%>/resource/vendors/jquery-1.9.1.min.js"></script>
    <script src="<%=path%>/resource/bootstrap/js/bootstrap.min.js"></script>
  	<script>
  	function login(){
  	 	var name = $("#name").val();
  		var password = $("#password").val();
  		console.log(name);
  		$.post(
  			 "<%=path%>/admin/login",
  			 {"name":name,"password":password},
  			 function(result){
  			 	var data = JSON.parse(result);
  				if(data["error"]){
  					alert(data["error"]);
  				}else{
  					alert("成功登录！");
  					window.location.reload();
  				}
  		});
  	}
  	</script>
  </body>
</html>
