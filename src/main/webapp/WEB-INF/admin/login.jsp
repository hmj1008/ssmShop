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
        <div id="user_login_state" class="alert alert-error">
			<button class="close" data-dismiss="alert">&times;</button>
			
		</div> 
        <input id="name" type="text" class="input-block-level" placeholder="Email address">
        <input id="password" type="password" class="input-block-level" placeholder="Password">
        <!-- 
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
         -->
        <button class="btn btn-large btn-primary" id="user_login">Sign in</button>
        
      </form>

    </div> <!-- /container -->
    <script src="<%=path%>/resource/vendors/jquery-1.9.1.min.js"></script>
    <script src="<%=path%>/resource/bootstrap/js/bootstrap.min.js"></script>
  	<script>
  	 $(function() {
  	 	$("#user_login_state").hide();
  	 	
	  	$("#user_login").click(function(){
	  		$("#user_login").attr('disabled',"true");//添加disabled属性 
	  	 	var name = $("#name").val();
	  		var password = $("#password").val();
	        if(name==""||password==""){
	        	alert("账号或密码不能为空！");
	        	$("#user_login").removeAttr("disabled"); 移除disabled属性 
	        	return false;
	        }
	        $.ajax({
		          url : "<%=path%>/admin/login",
		          type : "POST",
		          data :  {"name":name,"password":password},
	            }).done(function(result){
		  			var data = JSON.parse(result);
		  			console.log(result);
		  			if(data["error"]){
		  				$("#user_login_state").append(data["error"]+"<br/>");
		  				$("#user_login_state").show();
		  				$("#user_login").removeAttr("disabled");
		  			}else{
		  				alert("成功登录！");
		  				window.location.reload();
		  			}
		  		});
  		});
  	});
  	</script>
  </body>
</html>
