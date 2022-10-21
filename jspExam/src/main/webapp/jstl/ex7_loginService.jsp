
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:requestEncoding value="UTF-8"/>

<c:choose>
	<c:when test="${'admin' == param.id && '1234' == param.pw }">
		<c:set var="id" value='admin' scope="session"/>
		<c:redirect url="ex7_login.jsp" />
	</c:when> 
	<c:otherwise>
		<script>alert('아이디/비밀번호를 확인 후 다시 입력하세요.'); location.href='ex7_login.jsp';</script>
	</c:otherwise>
</c:choose>