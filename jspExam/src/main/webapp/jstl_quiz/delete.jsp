<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<c:choose>
	<c:when test="${empty sessionScope.id }">
		<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>
	</c:when>
	<c:otherwise>
		<!DOCTYPE html>
		<html>
		<head>
		<meta charset="UTF-8">
		<title>delete</title>
		</head>
		<body>
			<form action="deleteService.jsp" method="post">
				<input type="text" value="${sessionScope.id }" readonly="readonly"> <br>
				<input type="password" placeholder="비밀번호" name="pw" ><br> 
				<input type="password" placeholder="비밀번호 확인" name="confirmPw" ><br> 
				<input type="submit" value="회원 탈퇴" >
				<input type="button" value="취소" onclick="location.href='index.jsp'">
			</form>
		</body>
		</html>
	</c:otherwise>
</c:choose>
