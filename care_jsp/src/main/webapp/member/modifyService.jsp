<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberCheck"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("id");
	if(id == null || id == ""){
		response.sendRedirect("login.jsp");
		return;
	}
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");

	// 입력 값 검증
	if(name == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back(); </script>");
		return;
	}
	boolean check = MemberCheck.pwEquals(pw, confirmPw);
	if(check){
		out.print("<script>alert('입력한 비밀번호가 서로 다릅니다.'); history.back(); </script>");
		return;
	}
	
	// 중복확인 및 디비 저장
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	if(member != null){
		if(pw != "" && pw.equals(member.getPw()) == false)
			member.setPw(pw);
		
		member.setName(name);
		member.setEmail(email);
		member.setMobile(mobile);
		member.setAddress(address);
		
		memberDao.update(member);
		out.print("<script>alert('회원 수정 완료');location.href='logout.jsp'; </script>");
	}else{
		out.print("<script>alert('회원 정보 수정 실패'); history.back(); </script>");
	}
%>


