<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex17</title>
<script>
	function down(id) {
		id.innerHTML = "누르고있음!";
	}
	function up(id) {
		id.innerHTML = "안누름!";
	}
	
</script>
</head>
<body>
	<div onmousedown="down(this)" onmouseup="up(this)">
	Mouse 
	</div>
</body>
</html>