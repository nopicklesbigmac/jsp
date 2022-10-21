<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 2</title>
</head>
<body>
	<%-- <jsp:include page="include1.jsp" /> --%>
	<%@include file="include1.jsp" %>
	<%=s %>
</body>
</html>