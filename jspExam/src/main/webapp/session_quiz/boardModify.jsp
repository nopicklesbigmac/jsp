<%@page import="session_quiz.BoardDTO"%>
<%@page import="session_quiz.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>boardModify</title>
</head>
<body>
<%@ include file="header.jsp"%>
<div align="center" >

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
	BoardDTO board = boardDao.selectNum(num);
	if(board == null){
		response.sendRedirect("boardForm.jsp");
		return;
	}
%>
<form action="boardModifyService.jsp" method="post">
	<input type="hidden" name="num" value="<%=num%>">
	<table border='1'>
		<tr>
			<th width="200">작성자</th>
			<td width="200"><%=board.getId() %></td>
			<th width="100">조회수</th>
			<td width="200"><%=board.getHit() %></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><%=board.getWriteTime() %></td>
			<th>다운로드</th>
			<td><%=board.getFileName() %></td>
		</tr>
		<tr>
			<th>제목 수정</th>
			<td colspan="3">
				<input style="width:100%;" type="text" name="title" value="<%=board.getTitle()%>">
			</td>
		</tr>
		<tr>
			<th>문서내용 수정</th>
			<td colspan="3">
				<textarea rows="10" cols="30" style="width:100%" name="content"><%=board.getContent() %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4" >
				<button type="button" onclick = "location.href='javascript:history.back();'">이전</button>
				<input type="submit" value="수정">
			</td>
		</tr>
	</table>
</form>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>

