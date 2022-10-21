<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Ex4 ex4 = new Ex4(); -->
<jsp:useBean id="ex4" class="actionTag.Ex4"/>

<!-- 
	ex4.setId(request.getParameter("id"));
	ex4.setPw(request.getParameter("pw"));
	ex4.setName(request.getParameter("name"));
	ex4.setEmail(request.getParameter("email"));
 -->
 <jsp:setProperty property="*" name="ex4"/>
 
 <!-- 
 ex4.getId();  ex4.getPw(); 
 ex4.getName();  ex4.getEmail(); 
 -->
아이디 : <jsp:getProperty property="id" name="ex4"/><br>
비밀번호 : <jsp:getProperty property="pw" name="ex4"/><br>
이름 : <jsp:getProperty property="name" name="ex4"/><br>
이메일 : <jsp:getProperty property="email" name="ex4"/><br>
 