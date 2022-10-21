<%@page import="session_quiz.PageService"%>
<%@page import="session_quiz.BoardDAO"%>
<%@page import="session_quiz.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%

	String cp = request.getParameter("currentPage");
	int currentPage = 0;
	try {
		currentPage = Integer.parseInt(cp);
	} catch (Exception e) {
		currentPage = 1;
	}
	if (currentPage < 1)
		currentPage = 1; 
	
	int pageBlock = 3;
	int end = currentPage * pageBlock;
	int begin = end + 1 - pageBlock;
	
	BoardDAO boardDao = BoardDAO.getInstance();
	ArrayList<BoardDTO> boards = boardDao.list(begin, end);
	int totalCount = boardDao.count();
	
	String url = "boardForm.jsp?currentPage=";
	String result = PageService.getNavi(url, currentPage, pageBlock, totalCount);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>boardForm</title>
</head>
<body>
	<div align="center">
		<h1>게시판 목록</h1>
		<table border='1'>
			<tr>
				<th width="100">No.</th>
				<th width="250">제목</th>
				<th width="100">작성자</th>
				<th width="100">작성일</th>
				<th>조회수</th>
			</tr>
			<%
			if (boards == null || boards.size() == 0) {
			%>
			<tr>
				<th colspan="5">등록된 값이 없습니다</th>
			</tr>
			<%
			} else {

				for (BoardDTO b : boards) {
			%>
				<tr>
					<td><%=b.getNum()%></td>
					<td style="cursor: pointer"
						onclick="location.href='content.jsp?num=<%=b.getNum()%>'"><%=b.getTitle()%></td>
					<td><%=b.getId()%></td>
					<td><%=b.getWriteTime()%></td>
					<td><%=b.getHit()%></td>
				</tr>  
			<%
				}
			}
			%>

			<tr>
				<td colspan="4"><%=result%></td>
				<%
				if (session.getAttribute("id") == null) {
				%>
					<td><button type="button" onclick="location.href='login.jsp'">글쓰기</button></td>
				<%
				} else {
				%>
					<td>
						<button type="button" onclick="location.href='boardWrite.jsp'">글쓰기</button>
					</td>
				<%
				}
				%>
			</tr>
		</table>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>

<!-- 
INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, 'admin', '공지사항', '공지사항 내용', 'admin.txt', '2022-05-20', 0);
INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, 'user1', '게시글1', '게시글1 내용', 'user1.txt', '2022-05-21', 0);
INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, 'user2', '게시글2', '게시글2 내용', 'user2.txt', '2022-05-22', 0);
INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, 'user3', '게시글3', '게시글3 내용', 'user3.txt', '2022-05-23', 0);
INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, 'user4', '게시글4', '게시글4 내용', 'user4.txt', '2022-05-24', 0);
INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, 'user5', '게시글5', '게시글5 내용', 'user5.txt', '2022-05-25', 0);
INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, 'user6', '게시글6', '게시글6 내용', 'user6.txt', '2022-05-26', 0);
INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, 'user7', '게시글7', '게시글7 내용', 'user7.txt', '2022-05-27', 0);
INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, 'user8', '게시글8', '게시글8 내용', 'user8.txt', '2022-05-28', 0);
INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, 'user9', '게시글9', '게시글9 내용', 'user9.txt', '2022-05-29', 0);
 -->

