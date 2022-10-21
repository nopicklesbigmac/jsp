<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04</title>
</head>
<body>
  	<h2> B 페이지 </h2>
  	페이지 :<%=pageContext.getAttribute("id") %><br>
  	요청 :<%=request.getAttribute("id") %><br>
  	세션 :<%=session.getAttribute("id") %><br>
  	애플리케이션 :<%=application.getAttribute("id") %><br>
  	
  	<a href="ex05_C.jsp">c 페이지로 이동</a>
</body>
</html>