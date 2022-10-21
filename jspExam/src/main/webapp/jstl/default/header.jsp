<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<c:choose>
            	<c:when test="${empty sessionScope.id }">
         			<li><a href="register.jsp">Register</a></li>
            		<li><a href="login.jsp">Login</a></li>
            </c:when>
            <c:otherwise>
               		<li><a href="memberInfo.jsp">memberInfo</a></li>
               		<li><a href="logout.jsp">Logout</a></li>
            </c:otherwise>
         </c:choose>
		</ul>
		<hr>
	</div>
</body>
</html>