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
	function set_interval(){
		obj = setInterval(timer,1000)
	}
	function timer(){
		var today = new Date();
		document.getElementById("current").innerHTML = today.toLocaleTimeString();
	}
</script>
</head>
<body>
	<p>현재시간</p>
	<p id=current></p>
	<button onclick="set_interval()">Start time</button>
	<button onclick="clearInterval(obj)">stop time</button>
</body>
</html>