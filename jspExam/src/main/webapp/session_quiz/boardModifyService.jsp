<%@page import="session_quiz.BoardDTO"%>
<%@page import="session_quiz.BoardDAO"%>
<%@page import="session_quiz.MemberDTO"%>
<%@page import="session_quiz.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = (String)session.getAttribute("id");
	if(id == null){
		response.sendRedirect("login.jsp");
		return;
	}

	request.setCharacterEncoding("utf-8");
	String n = request.getParameter("num");

 	if(n == null || n == ""){
		response.sendRedirect("boardForm.jsp");
		return;
	}
		
	int num = 0;
	try{
		num = Integer.parseInt(n);
	} catch(Exception e){
		response.sendRedirect("boardForm.jsp");
		return;
	}
	
	BoardDAO boardDao = BoardDAO.getInstance();
	BoardDTO board = boardDao.selectNum(num);
	if(board == null){
		response.sendRedirect("boardForm.jsp");
		return;
	}
	
	if(id.equals(board.getId()) == false){
		response.sendRedirect("boardForm.jsp");
		return;
	}
	
	String title = request.getParameter("title");
	if(title == null || title == ""){
		out.print("<script>alert('필수 항목입니다.'); history.back();</script>");
		return;
	}
	
	String content = request.getParameter("content");
	board.setTitle(title);
	board.setContent(content);

	boardDao.modify(board);
%>
<script>alert('회원 수정 완료'); location.href='index.jsp';</script>




