<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%	
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pass");
		String chk = request.getParameter("saveid");
		if(chk.equals("saveid")&&id.equals("zxc777a") && pw.equals("1234")){
			Cookie cookie = new Cookie("saveid",id);
			cookie.setMaxAge(60);
			response.addCookie(cookie);	
		}else{
			Cookie cookie = new Cookie("saveid",id);
			cookie.setMaxAge(0);
			response.addCookie(cookie);	
		}
		response.sendRedirect( "ex4_login.jsp");
	%>