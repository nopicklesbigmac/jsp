<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>yellow</title>
</head>
<body bgcolor="yellow">
	<h2>yellow.jsp 페이지</h2>
	<!-- http://localhost:8085/jspExam/actionTag/yellow.jsp -->
	<%
		 request.getRequestDispatcher("red.jsp").forward(request, response);
	%>
	<%-- <jsp:forward page="red.jsp" /> --%>
</body>
</html>