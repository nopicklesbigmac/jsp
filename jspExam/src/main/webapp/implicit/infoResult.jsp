<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <% request.setCharacterEncoding("UTF-8");%>
아이디 : <%= request.getParameter("id")%><br>
비밀번호 : <%= request.getParameter("pass")%><br>

자기소개<br>
	<pre> 
		<%= request.getParameter("content")%>
	</pre>