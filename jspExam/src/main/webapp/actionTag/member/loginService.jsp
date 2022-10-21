<%@page import="actionTag.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberDao" class="actionTag.MemberDAO" />
<jsp:useBean id="member" class="actionTag.MemberDTO" />
<jsp:setProperty property="*" name="member"/>
<%
	if(member.getId() == "" || member.getPwd1() == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
		return ;
	}

	MemberDTO check = memberDao.selectId(member.getId());
	if(check != null && check.getPwd1().equals(member.getPwd1())){
		session.setAttribute("id", member.getId());
		session.setAttribute("name", check.getName());
		session.setAttribute("addr", check.getAddr());
		session.setAttribute("tel", check.getTel());
		out.print("<script>alert('로그인 성공'); location.href='index.jsp';</script>");
	}else{
		out.print("<script>alert('로그인 실패'); history.back();</script>");
	}
%>
