<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminPage</title>
</head>
<body>
	<h3>관리자로 로그인 성공</h3>
	비밀번호 : <%=request.getParameter("pw") %><br>
	사용자 : <%=request.getParameter("user") %><br>
	아이디 : <%=request.getParameter("id") %><br>
	매개변수 : <%=request.getAttribute("param") %> <br>
	<a href="login.jsp" > 이전 </a>
</body>
</html>