<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%	
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pass");
		String chk = request.getParameter("saveid");
		if (chk.equals(null)||id.equals(null) || pw.equals(null)){
			
		}
		else if(chk.equals("saveid")&&id.equals("zxc777a") && pw.equals("1234")){
			session.setAttribute("saveid", id);
		}else if(!id.equals("zxc777a")){
			session.removeAttribute("saveid");
		}else {
			
		}
		response.sendRedirect( "ex2_login.jsp");
	%>