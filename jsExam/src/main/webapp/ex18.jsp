<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex17</title>
<script>
	function changdText(id) {
		id.innerHTML = "change text!";
		id.style.color="lightblue";
	}
	function defaultText() {
		document.getElementById("h1_id").innerHTML = "Click on this Text";
		document.getElementById("h1_id").style.color = "black";
	}
	
</script>
</head>
<body>
	<h1 onclick="changdText(this)" onmouseover="defaultText()" id="h1_id">Click on this Text</h1>
</body>
</html>