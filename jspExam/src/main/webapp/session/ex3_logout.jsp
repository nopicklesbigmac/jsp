<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	/* response.sendRedirect("ex3_login.jsp"); */
%>
<script>alert('로그 아웃'); location.href='ex3_login.jsp';</script>