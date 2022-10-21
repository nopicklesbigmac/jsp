<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script src="check.js"></script>
</head>
<body>
	<jsp:include page="/actionTag/default/header.jsp"/>
	<div align="center">
		<h1>로그인</h1>
		<table>
		<tr><td>
			<form action="loginService.jsp" id="f">
				<input type="text" name="id" placeholder="아이디" id="id"> <br>
				<input type="password" name="pwd1" placeholder="비밀번호" id="pwd1"><br>
				<input type="button" value="로그인" onclick="loginCheck()"><br>
			</form>
		</td></tr>
		</table>
	</div>
	<jsp:include page="/actionTag/default/footer.jsp"/>
</body>
</html>