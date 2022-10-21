<%@page import="session_quiz.MemberDAO"%>
<%@page import="session_quiz.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd1 = request.getParameter("pwd1");

	
	if(id == "" || pwd1 == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
		return ;
	}

	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectId(id);
	if(check != null && check.getPwd1().equals(pwd1)){
		session.setAttribute("id", id);
		session.setAttribute("name", check.getName());
		session.setAttribute("addr", check.getAddr());
		session.setAttribute("tel", check.getTel());
		out.print("<script>alert('로그인 성공'); location.href='index.jsp';</script>");
	}else{
		out.print("<script>alert('로그인 실패'); history.back();</script>");
	}
%>
