<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/public/head.jspf"%>
<title>Insert title here</title>
</head>
<body>
<form action="/ShopSpringMVC/show.html" method="post">
  用户名：<input name="username" type="text"/>
  <input type="submit" value="提交"/>
  获取数据：${name} ${id}
</form>
<a href="/ShopSpringMVC/testJson.html?id=1&&name=nibei">testJson</a>
</body>
</html>