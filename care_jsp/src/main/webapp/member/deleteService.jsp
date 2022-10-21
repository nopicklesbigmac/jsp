<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@page import="member.MemberCheck"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	if(id == null || id == ""){
		response.sendRedirect("login.jsp");
		return;
	}
	request.setCharacterEncoding("utf-8");
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	
	boolean emptyCheck = MemberCheck.emptyCheck(pw, confirmPw);
	if(emptyCheck){
		out.print("<script>alert('비밀번호를 입력하세요.'); history.back(); </script>");
		return;
	}
	emptyCheck = MemberCheck.pwEquals(pw, confirmPw);
	if(emptyCheck){
		out.print("<script>alert('비밀번호를 확인 후 다시 입력하세요.'); history.back(); </script>");
		return;
	}
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectId(id);
	
	emptyCheck = MemberCheck.pwEquals(pw, check.getPw());
	if(emptyCheck == false){ //비밀번호가 같다면 false
		memberDao.delete(id);
		response.sendRedirect("logout.jsp");
		return;
	}
%>
<script>alert('비밀번호를 확인 후 다시 입력하세요.'); history.back(); </script>