<%@page import="actionTag.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
	<jsp:useBean id="memberDao" class="actionTag.MemberDAO"/>
	<jsp:useBean id="member" class="actionTag.MemberDTO"/>
	<jsp:setProperty property="*" name="member"/>
<%
	
	if(member.getId() == "" || member.getPwd1() == "" || member.getName() == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
		return ;
	}
	if(! member.getPwd1().equals(member.getPwd2())){
		out.print("<script>alert('두 패스워드가 일치하지 않습니다.'); history.back();</script>");
		return ;
	}
	
	MemberDTO check = memberDao.selectId(member.getId());
	if(check == null){
		memberDao.insert(member);
		out.print("<script>alert('회원 가입 완료'); location.href='index.jsp';</script>");
	}else{
		out.print("<script>alert('회원 가입 실패'); history.back();</script>");
	}
%>
