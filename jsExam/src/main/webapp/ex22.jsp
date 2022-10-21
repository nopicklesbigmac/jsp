<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex17</title>
<style type="text/css">
	img {
		width:100px;
		height:150px;
	}
</style>
<script>
	function down(image) {
		image.src = "images/lighton.png";
	}
	function up(image) {
		image.src = "images/lightoff.png";
	}
	
</script>
</head>
<body>
	<img src="images/lightoff.png" onmousedown="down(this)" onmouseup="up(this)"/>
</body>
</html>