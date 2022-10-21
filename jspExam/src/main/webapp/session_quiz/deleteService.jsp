<%@page import="session_quiz.MemberDTO"%>
<%@page import="session_quiz.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	if(id == null){
		out.print("<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>");
		return;
	}
	
	request.setCharacterEncoding("utf-8");
	String pwd1 = request.getParameter("pwd1");
	String pwd2 = request.getParameter("pwd2");
	
	// 입력 값 검증
	if(pwd1 == ""){
		out.print("<script>alert(' 필수 항목이다.'); location.href='delete.jsp';</script>");
		return;
	}
	
	// 입력 값 검증.
	if(pwd1.equals(pwd2) == false){
		response.sendRedirect("delete.jsp");
		return ;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	if(member.getPwd1().equals(pwd1) == false){
		out.print("<script>alert('비밀번호가 일치하지 않습니다.'); location.href='delete.jsp';</script>");
		return;
	}
	
	memberDao.delete(member);
	session.invalidate();
%>
<script>alert('회원 삭제 완료'); location.href='index.jsp';</script>
