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
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	
	// 입력 값 검증
	if(pwd1 == "" || name == ""){
		out.print("<script>alert(' 필수 항목이다.'); location.href='update.jsp';</script>");
		return;
	}
	
	// 입력 값 검증.
	if(pwd1.equals(pwd2) == false){
		response.sendRedirect("update.jsp");
		return ;
	}
	
	// 중복 아이디
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectId(id);
	if(check == null){
		out.print("<script>alert('회원 가입 후 이용하세요.'); location.href='register.jsp';</script>");
		return;
	}
	
	check.setPwd1(pwd1);
	check.setName(name);
	check.setAddr(addr);
	check.setTel(tel);
	
	memberDao.update(check);
	session.invalidate();
%>
<script>alert('회원 수정 완료'); location.href='index.jsp';</script>




