<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% request.setCharacterEncoding("UTF-8");%>
	<%	
		String id = request.getParameter("id");
		String pw = request.getParameter("pass");
		if (id.isEmpty()||pw.isEmpty()){
		    response.sendRedirect("loginForm.jsp");
		}else if(id.equals("zxc777a") && pw.equals("1234")){
		    response.sendRedirect("loginIndex.jsp");
		}else{
			response.sendRedirect( "loginFailed.jsp");
		}
	%>