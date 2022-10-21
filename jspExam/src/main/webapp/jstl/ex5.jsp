<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex5</title>
</head>
<body>
	<c:set var="name" value="김변수"/>
	<c:choose>
		<c:when test="${name == '김변수' }">
			<h3>이름은 김변수입니다.</h3>
		</c:when>
		<c:when test="${name == '이상수' }">
			<h3>이름은 이상수입니다.</h3>
		</c:when>
		<c:otherwise>
			<h3>이름은 홍길동입니다.</h3>
		</c:otherwise>		
	</c:choose>
</body>
</html>