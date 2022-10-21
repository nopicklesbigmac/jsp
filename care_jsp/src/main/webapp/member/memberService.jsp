<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberCheck"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");

	// 입력 값 검증
	boolean check = MemberCheck.emptyCheck(id, pw, name);
	if(check){
		out.print("<script>alert('필수 정보입니다.'); history.back(); </script>");
		return;
	}
	check = MemberCheck.pwEquals(pw, confirmPw);
	if(check){
		out.print("<script>alert('입력한 비밀번호가 서로 다릅니다.'); history.back(); </script>");
		return;
	}
	check = MemberCheck.idCheck(id);
	if(check){
		out.print("<script>alert('소문자, 숫자, _ 로 5~15자리 아이디를 입력하세요.'); history.back(); </script>");
		return;
	}
	
	// 중복확인 및 디비 저장
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	if(member == null){
		member = new MemberDTO();
		member.setId(id);
		member.setPw(pw);
		member.setName(name);
		member.setEmail(email);
		member.setMobile(mobile);
		member.setAddress(address);
		memberDao.insert(member);
		out.print("<script>alert('회원 가입 완료');location.href='../index.jsp'; </script>");
	}else{
		out.print("<script>alert('중복아이디로 가입 실패'); history.back(); </script>");
	}
%>


