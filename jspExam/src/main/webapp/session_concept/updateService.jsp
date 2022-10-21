<%@page import="session_concept.MemberDTO"%>
<%@page import="session_concept.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = (String)session.getAttribute("id");
	if(id == null){
		out.print("<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>");
		return;
	}

	request.setCharacterEncoding("utf-8");
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	// 입력 값 검증
	if(pw == "" || name == ""){
		out.print("<script>alert(' 필수 항목이다.'); location.href='update.jsp';</script>");
		return;
	}
	
	// 입력 값 검증.
	if(pw.equals(confirmPw) == false){
		response.sendRedirect("update.jsp");
		return ;
	}
	
	// 중복 아이디
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectId(id);
	if(check == null){
		out.print("<script>alert('회원 가입 후 이용하세요.'); location.href='member.jsp';</script>");
		return;
	}
	
	check.setPw(pw);
	check.setName(name);
	if(email != "")
		check.setEmail(email);
	
	memberDao.update(check);
	session.invalidate();
%>
<script>alert('회원 수정 완료'); location.href='index.jsp';</script>




