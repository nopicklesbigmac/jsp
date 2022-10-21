<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String user = request.getParameter("user");
	
	if(user.equals("admin")){
		request.setAttribute("param", "param_admin");
		request.getRequestDispatcher("adminPage.jsp").forward(request, response);
	}else{
%>
		<jsp:forward page="userPage.jsp">
			<jsp:param value="param_user" name="param"/>
		</jsp:forward>
<%
	}
%>