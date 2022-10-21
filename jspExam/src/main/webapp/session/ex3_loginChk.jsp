<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if("admin".equals(id) && "1234".equals(pw)){
		session.setAttribute("id", "admin");
		// 데이터베이스에서 정보를 아이디로 조회한 후 라면
		session.setAttribute("name", "김변수");
		response.sendRedirect("ex3_main.jsp");
		return;
	}
%>
<script>location.href='ex3_login.jsp'</script>