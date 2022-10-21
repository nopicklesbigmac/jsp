<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 2</title>
</head>
<body>
   <%@ include file="ex8_include1.jsp" %>
   <jsp:include page="ex8_include1.jsp"/>
   <c:import url="ex8_include1.jsp" />
   data1 : <%=data1 %> <br>
   data1 : ${data1 } <br>
   data2 : ${data2 } <br>
   <c:remove var="id" scope="session"/>
</body>
</html>