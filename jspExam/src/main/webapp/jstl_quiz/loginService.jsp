<%@page import="jstl_quiz.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:requestEncoding value="utf-8" />
 
<jsp:useBean id="memberVo" class="jstl_quiz.MemberVO" />
<jsp:setProperty property="*" name="memberVo" />
<c:choose>
	<c:when test="${empty memberVo.id || empty memberVo.pw }">
		<script>alert('필수 항목입니다.'); location.href='login.jsp';</script>
	</c:when>
	
	<c:otherwise>
		<c:set var="memberDao" value="<%=new MemberDAO() %>" />
		<c:set var="member" value="${memberDao.selectId(memberVo.id) }" />
		
		<c:choose>
			<c:when test="${not empty member && member.pw == memberVo.pw }">
				<c:set var="id" value="${member.id }" scope="session" />
				<c:set var="name" value="${member.name }" scope="session" />
				<c:set var="email" value="${member.email }" scope="session" />
				<c:redirect url="index.jsp" />
			</c:when>
			<c:otherwise>
				<script>alert('아이디 또는 비밀번호를 확인 후 입력하세요.'); location.href='login.jsp';</script>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>



