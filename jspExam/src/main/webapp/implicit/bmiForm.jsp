<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02</title>
<style>
</style>
</head>
<body>
<h1>for문으로 누적 덧셈</h1>
	<form action="bmiResult.jsp" method="post">
		이름 : <input type="text" name="name"><br>
		키 : <input type="number" step="0.1" name="cm"><br>
		몸무게 : <input type="number" step="0.1" name="kg"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>