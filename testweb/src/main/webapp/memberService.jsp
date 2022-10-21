<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	String name = request.getParameter("name");
	MemberDAO memberDao = new MemberDAO();
	boolean check = memberDao.selectId(id);
	// 입력 값 검증
	if(id==""){
		out.print("<script>alert('필수 정보입니다.'); history.back(); </script>");
		return;
	}
	if(confirmPw==null|pw==null){
		out.print("<script>alert('비밀번호안침'); history.back(); </script>");
		return;
	}
	if(pw==confirmPw){
		out.print("<script>alert('입력한 비밀번호가 서로 다릅니다.'); history.back(); </script>");
		return;
	}
	if(check){
		out.print("<script>alert('중복아이디로 가입 실패'); history.back(); </script>");
	}else{
		MemberDTO member = new MemberDTO();
		member.setId(id);
		member.setPw(pw);
		member.setName(name);
		memberDao.insert(member); 
		out.print("<script>alert('회원 가입 완료');location.href='member.jsp'; </script>");
	}
%>


