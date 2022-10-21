<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<style type="text/css">
	a {text-decoration: none; color:black;}
	ul {padding: 20px;}
	ul li {display: inline; padding: 15px;}
	.main_div{height:150px;}
</style>

</head>
<body>
	<div align="center">
		<h1>CARE LAB</h1>
	</div>
	
	<div align="right">
		<hr>
		<ul>
			<li><a href="index.jsp">HOME</a></li>
			<li><a href="register.jsp">Register</a></li>
			<li><a href="boardForm.jsp">board</a></li>
			<% if(session.getAttribute("id") == null){%>
				<li><a href="login.jsp">Login</a></li>
			<%}else{ %>
				<li><a href="memberInfo.jsp">memberInfo</a></li>
				<li><a href="logout.jsp">Logout</a></li>
			<%} %>
		</ul>
		<hr>
	</div>
</body>
</html>