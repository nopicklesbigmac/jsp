<%@page import="session_concept.MemberDTO"%>
<%@page import="session_concept.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// 입력 값 검증
	if(id == "" || pw == ""){
		out.print("<script>alert('필수 항목입니다.'); location.href='login.jsp';</script>");
		return;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	
	if(member != null && member.getPw().equals(pw)){
		//로그인 성공
		session.setAttribute("id", member.getId());
		session.setAttribute("name", member.getName());
		session.setAttribute("email", member.getEmail());
		response.sendRedirect("index.jsp");
	}else{
		out.print("<script>alert('아이디 또는 비밀번호를 확인 후 입력하세요.'); location.href='login.jsp';</script>");
	}
%>


