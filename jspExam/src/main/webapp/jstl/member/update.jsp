<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose> 
	<c:when test="${empty sessionScope.id }">
		<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>
	</c:when>
	<c:otherwise>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
<script src="check.js"></script>
</head>
<body>
	<c:import url="/jstl/default/header.jsp"/>
	
	<div align="center">
		<h1>회원 수정</h1>
		<table>
		<tr><td>
			<form action="updateService.jsp" method="post" id="f">
				<input type="text" id="id" value="${sessionScope.id }" disabled="disabled"><br>
				<input type="password" name="pwd1" placeholder="비밀번호" id="pwd1"><br>
				<input type="password" name="pwd2" placeholder="비밀번호 확인 " id="pwd2" onchange="pwCheck()">
				<label id="label">(*필수 체크)</label><br>
				<input type="text" name="name" id="name" value="${sessionScope.name }" ><br>
				<input type="text" name="addr" value="${sessionScope.addr }" ><br>
				<input type="text" name="tel" value="${sessionScope.tel }" ><br>
				<input type="button" value="회원수정" onclick="allCheck()"><br>
			</form>
		</td></tr>
		</table>
	</div>
	<c:import url="/jstl/default/footer.jsp"/>
</body>
</html>
	</c:otherwise>
</c:choose>
