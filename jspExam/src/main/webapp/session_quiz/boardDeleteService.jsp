<%@page import="session_quiz.BoardDTO"%>
<%@page import="session_quiz.BoardDAO"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	if(id == null){
		response.sendRedirect("login.jsp");
		return;
	}
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
	
	String fileName = board.getFileName();
	String saveFolder ="C:\\javas\\upload\\" + id + "\\" + fileName;
	File file = new File(saveFolder);
	if(file.exists())
		file.delete();
	
	boardDao.delete(num);

%>
<script>alert('게시글 삭제 됨');location.href='boardForm.jsp';</script>

