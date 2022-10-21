<%@page import="session.MemberDAO"%>
<%@page import="session.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("id");
	String confirmPw = request.getParameter("id");
	String name = request.getParameter("id");
	String email = request.getParameter("id");

	//입력값검증 
	if(id ==""||pw==""||name==""){
		out.print("<script>alert('서버에서 검증한 결과 필수항목이다.'); location.href='member.jsp';</script>");
		return;
	}
	if(pw.equals(confirmPw)==false){
		response.sendRedirect("member.jsp");
		return;
	}
	// 중복 아이디
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectId(id);
	if (check != null){
		out.print("<script>alert('중복 아이디'); location.href='member.jsp';</script>");
		return;
	}
	
	MemberDTO member = new MemberDTO();
	member.setId(id);
	member.setPw(pw);
	member.setName(name);
	member.setEmail(email);
	
	memberDao.insert(member);

%>
<script>alert('회원 가입 완료'); location.href='index.jsp';</script>