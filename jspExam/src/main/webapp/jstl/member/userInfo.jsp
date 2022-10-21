<%@page import="session_quiz.MemberDAO"%>
<%@page import="session_quiz.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="utf-8" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userInfo</title>
</head>
<body>
	<c:import url="/jstl/default/header.jsp" />
	<c:choose>
		<c:when test="${empty sessionScope.id }">
			<c:redirect url="login.jsp" />
		</c:when>
		<c:otherwise>
			<c:set var="memberDao" value="<%=new MemberDAO() %>" />
			<c:set var="member" value="${memberDao.selectId(param.id) }" />
			<div align="center">
				<h1>개인 정보</h1>
				아이디 : ${member.id } <br> 
				비밀번호 : ${member.pwd1 }<br>
				이름 : ${member.name } <br>
				주소 : ${member.addr } <br>
				전화번호 : ${member.tel } <br><br>
				<button type="button" onclick="location.href='update.jsp?id= ${member.id }'">회원 수정</button>
				<button type="button" onclick="location.href='delete.jsp?id= ${member.id }'">회원 삭제</button>
			</div>	
		</c:otherwise>
	</c:choose>
	
	
	<c:import url="/jstl/default/footer.jsp" />
</body>
</html>



































