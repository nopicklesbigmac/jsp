<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3_main</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	if(id == null){
		response.sendRedirect("ex3_login.jsp");
	}else{ %>

	<%=id %>님 안녕하세요! <br>
	홈페이지에 방문해 주셔서 감사합니다.<br>
	즐거운 시간 되세요! <br>
	
	<input type="button" value="로그아웃" onclick="location.href='ex3_logout.jsp'" >
	<input type="button" value="로그인" onclick="location.href='ex3_login.jsp'" >
<%} %>
</body>
</html>