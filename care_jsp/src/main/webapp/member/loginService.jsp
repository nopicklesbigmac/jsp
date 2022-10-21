<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@page import="member.MemberCheck"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	boolean emptyCheck = MemberCheck.emptyCheck(id, pw);
	if(emptyCheck){
		out.print("<script>alert('아이디/비밀번호를 입력하세요.'); history.back();</script>");
		return;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectId(id);
	if(check == null){
		out.print("<script>alert('아이디 또는 비밀번호가 틀렸습니다.'); history.back();</script>");
		return;
	}
	if(check.getPw().equals(pw)){
		session.setAttribute("id", check.getId());
		session.setAttribute("name", check.getName());
		session.setAttribute("email", check.getEmail());
		session.setAttribute("mobile", check.getMobile());
		session.setAttribute("address", check.getAddress());
		response.sendRedirect("/care_jsp/index.jsp");
		return;
	}
	
%>
<script>alert('아이디 또는 비밀번호가 틀렸습니다.'); history.back();</script>
