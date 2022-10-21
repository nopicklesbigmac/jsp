<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex33-1</title>
<script>
	function ex33(){
		document.getElementById('f').action="ex33-2.jsp";
		document.getElementById('f').submit();
	}
</script>
</head>
<body>
 	<form id="f" >
 		아이디 : <input type="text" name="id"><br>
 		<label>비밀번호 : </label> <input type="password" name="pw"><br>
 		<input type="button" value="로그인" onclick="ex33()"> 
 		<input type="button" value="취소" onclick="location.href='ex33-3.jsp'">
 	</form>
</body>
</html>