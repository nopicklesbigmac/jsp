<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeForm</title>
</head>
<style>

</style>
<body>
<div align="center">
	<h1>게시글 등록</h1>
	<form action="boardWriteService.jsp" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="20" name="content"></textarea></td>
			</tr>
			<tr>
				<th>파일첨부</th>
				<td><input type="file" name="upload"></td>
			</tr>
			<tr>
				<th class="submit" colspan="2">
					<input type="submit" value="글쓰기">
					<input type="button" value="목록" onclick="location.href='boardForm.jsp'">
				</th>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>