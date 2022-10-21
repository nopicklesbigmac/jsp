<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2</title>
</head>
<body>
	<c:set var="data1" value="JSTL TEST" />
	<c:set var="data2">
		value 속성 대신 해서 태그 사이에 변수에 입력할 값을 넣을 수 있음.
	</c:set>
	data1 : <c:out value="${data1 }"/> <br>
	data1 : ${data1 }<br>
	data2 : ${data2 } <br>
</body>
</html>