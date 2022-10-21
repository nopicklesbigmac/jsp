<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3</title>
</head>
<body>
	<%
		String data1 = "자바 변수의 데이터";
	%>
	data1 : <%=data1 %> <br>
	
	<c:set var="data2" value="<%=data1 %>"/>
	data2 : ${data2 } <br>
<%-- 	
	<c:if test="조건식">
		종속문장
	</c:if>
 --%>
 	<c:if test="${ '자바 변수의 데이터' == data2 }">
 		<h3>참이므로 출력.</h3>
 	</c:if>
</body>
</html>