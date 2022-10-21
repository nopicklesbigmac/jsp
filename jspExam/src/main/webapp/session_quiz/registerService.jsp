<%@page import="session_quiz.MemberDAO"%>
<%@page import="session_quiz.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd1 = request.getParameter("pwd1");
	String pwd2 = request.getParameter("pwd2");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	
	if(id == "" || pwd1 == "" || name == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
		return ;
	}
	if(! pwd1.equals(pwd2)){
		out.print("<script>alert('두 패스워드가 일치하지 않습니다.'); history.back();</script>");
		return ;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectId(id);
	if(check == null){
		MemberDTO member = new MemberDTO();
		member.setId(id);
		member.setPwd1(pwd1);
		member.setName(name);
		member.setAddr(addr);
		member.setTel(tel);
		memberDao.insert(member);
		out.print("<script>alert('회원 가입 완료'); location.href='index.jsp';</script>");
	}else{
		out.print("<script>alert('회원 가입 실패'); history.back();</script>");
	}
%>
