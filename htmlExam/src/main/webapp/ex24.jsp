<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex16</title>
</head>
<body >
	<fieldset>
		<legend>취미</legend>
			게임하기 <input type="checkbox" name="habbys">
			책보기 <input type="checkbox" name="habbys">
			축구하기 <input type="checkbox" name="habbys">
			코딩하기 <input type="checkbox" name="habbys"checked="checked">
			기타 <input type="text" palceholder="입력">
	</fieldset>
	<fieldset>
		<legend>나이</legend>
			10대<input type="radio" name="ages">
			20대<input type="radio"name="ages"checked="checked">
			30대<input type="radio"name="ages"> 
			40대<input type="radio"name="ages">
			기타 <input type="text" palceholder="입력">
	</fieldset>
</body>
</html>
