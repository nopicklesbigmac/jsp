<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex17</title>
<style type="text/css">
	
</style>
<script>
	function myClick() {
		alert("안녕하세요.\n환영합니다.");
		var result = confirm("처음 방문입니까?");
		if (result){
			document.getElementById("myclick").innerHTML ="처음";
		}else{
			document.getElementById("myclick").innerHTML ="다시";
		}
	}
	
	
</script>
</head>
<body>
	<input type="button" value="클릭" onclick="myClick()"><br>
	<p id="myclick"></p>
</body>
</html>