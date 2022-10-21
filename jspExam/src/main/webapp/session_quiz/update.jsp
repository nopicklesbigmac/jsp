<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = (String)session.getAttribute("id");
	if(id == null){
		out.print("<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>");
		return;
	}

%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
<script src="check.js"></script>
</head>
<body>
	<%@ include file="/session_quiz/header.jsp" %>
	
	<div align="center">
		<h1>회원 수정</h1>
		<table>
		<tr><td>
			<form action="updateService.jsp" method="post" id="f">
				<input type="text" id="id" value="<%=id %>" disabled="disabled"><br>
				<input type="password" name="pwd1" placeholder="비밀번호" id="pwd1"><br>
				<input type="password" name="pwd2" placeholder="비밀번호 확인 " id="pwd2" onchange="pwCheck()">
				<label id="label">(*필수 체크)</label><br>
				<input type="text" name="name" id="name" value="<%=session.getAttribute("name") %>" ><br>
				<input type="text" name="addr" value="<%=session.getAttribute("addr") %>" ><br>
				<input type="text" name="tel" value="<%=session.getAttribute("tel") %>" ><br>
				<input type="button" value="회원수정" onclick="allCheck()"><br>
			</form>
		</td></tr>
		</table>
	</div>
	<%@ include file="/session_quiz/footer.jsp" %>
</body>
</html>