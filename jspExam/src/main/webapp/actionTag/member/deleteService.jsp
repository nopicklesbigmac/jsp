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
<jsp:useBean id="memberDao" class="actionTag.MemberDAO"/>	
<jsp:useBean id="member" class="actionTag.MemberDTO"/>	
<jsp:setProperty property="*" name="member"/>
<%	
	// 입력 값 검증
	if(member.getPwd1() == ""){
		out.print("<script>alert(' 필수 항목이다.'); location.href='delete.jsp';</script>");
		return;
	}
	
	// 입력 값 검증.
	if(member.getPwd1().equals(member.getPwd2()) == false){
		response.sendRedirect("delete.jsp");
		return ;
	}
	
	MemberDTO check = memberDao.selectId(id);
	if(check.getPwd1().equals(member.getPwd1()) == false){
		out.print("<script>alert('비밀번호가 일치하지 않습니다.'); location.href='delete.jsp';</script>");
		return;
	}
	
	member.setId(id);
	memberDao.delete(member);
	session.invalidate();
%>
<script>alert('회원 삭제 완료'); location.href='index.jsp';</script>
