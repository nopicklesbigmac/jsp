<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String data = request.getParameter("data");
	out.print("데이터 : " + data + "<br>");
%>

<!-- Ex3 ex3 = new Ex3(); -->
<jsp:useBean id="ex3" class="actionTag.Ex3"/>

<!-- 
	ex3.setData(request.getParameter("data"));
 -->
 <jsp:setProperty property="data" name="ex3"/>
 
 <!-- ex3.getData(); -->
 전달한 데이터 : <jsp:getProperty property="data" name="ex3"/>
 