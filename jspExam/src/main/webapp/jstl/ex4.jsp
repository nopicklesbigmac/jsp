<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex4</title>
</head>
<body>
	<%
		String data[] = {"김변수", "이상수", "박객체"};
	%>
	
	<c:set var="names" value="<%=data %>"/>
	이름 목록 : ${names[0] }, ${names[1] }, ${names[2] }
	<br>
	이름 목록 : 
	<c:forEach var="i" begin="0" end="2" step="1">
		${names[i] },
	</c:forEach>
	<br>
	이름 목록 :
	<c:forEach var="name" items="${names }">
		${name },
	</c:forEach>
	
</body>
</html>