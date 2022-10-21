<%@page import="session_quiz.BoardDTO"%>
<%@page import="session_quiz.BoardDAO"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>content</title>
</head>
<body>
<%@ include file="header.jsp"%>
<div align="center" >
<h1>글 내용</h1>
<%
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
	BoardDTO board = boardDao.getContent(num);
	if(board == null){
		response.sendRedirect("boardForm.jsp");
		return;
	}
%>

<table border='1'>
	<tr>
		<th width="100">작성자</th><td width="200"><%=board.getId() %></td>
		<th width="100">조회수</th><td width="200"><%=board.getHit()%></td>
	</tr>
	<tr>
		<th>작성일</th><td><%=board.getWriteTime() %></td>
		<th>다운로드</th>
		<td><a href="fileDown.jsp?fileName=<%=board.getFileName() %>&writeId=<%=board.getId() %>"><%=board.getFileName() %></a></td>
	</tr>
	<tr><th>제목</th><td colspan="3"><%=board.getTitle() %></td></tr>
	<tr><th>문서내용</th><td colspan="3"><%=board.getContent() %></td></tr>
	<tr>
		<td colspan="4" >
		<button type="button" onclick = "location.href='boardForm.jsp;'">목록</button>
		<% if(board.getId().equals(session.getAttribute("id"))){ %>
			<button type="button" onclick =	"location.href='boardModify.jsp?num=<%=num%>'">수정</button>
			<button type="button" onclick =	"location.href='boardDeleteService.jsp?num=<%=num%>'">삭제</button>
		<%} %>
		</td>
	</tr>
</table>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>
