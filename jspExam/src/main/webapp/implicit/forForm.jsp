<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02</title>
<style>
	fieldset {width:250px;}
</style>
</head>
<body>
<h1>for문으로 누적 덧셈</h1>
	<form action="forResult.jsp" method="post">
		1부터덧셈할 숫자 입력 : <input type="number" name="num">
		<input type="submit" value="전송">
	</form>
</body>
</html>