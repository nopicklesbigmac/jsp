
<%@page import="actionTag.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = (String)session.getAttribute("id");
	if(id == null){
		out.print("<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>");
		return;
	}

	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberDao" class="actionTag.MemberDAO" />
<jsp:useBean id="member" class="actionTag.MemberDTO" />
<jsp:setProperty property="*" name="member"/>
<%	
	// 입력 값 검증
	if(member.getPwd1() == "" || member.getName() == ""){
		out.print("<script>alert(' 필수 항목이다.'); location.href='update.jsp';</script>");
		return;
	}
	
	// 입력 값 검증.
	if(member.getPwd1().equals(member.getPwd2()) == false){
		response.sendRedirect("update.jsp");
		return ;
	}
	
	// 중복 아이디
	MemberDTO check = memberDao.selectId(id);
	if(check == null){
		out.print("<script>alert('회원 가입 후 이용하세요.'); location.href='register.jsp';</script>");
		return;
	}
	
	check = member;
	check.setId(id);
	
	memberDao.update(check);
	session.invalidate();
%>
<script>alert('회원 수정 완료'); location.href='index.jsp';</script>




