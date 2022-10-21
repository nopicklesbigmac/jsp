<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex17</title>
<script>
	function over(id) {
		id.innerHTML = "out!";
	}
	function out(id) {
		id.innerHTML = "over!";
	}
	
</script>
</head>
<body>
	<div onmouseout="out(this)" onmouseover="over(this)">
	Mous over 
	</div>
</body>
</html>