<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex16</title>
<style>
	
</style>
</head>
<body >
	<table border=1>
		<tr><!-- row 행, 줄 -->
			<th colspan=2>1행 1열, 2열</th>
			<th rowspan="3">1,2,3 행 3열</th>
		</tr>
		<tr>
			<th>2행 1열</th><!-- data 열, 간 -->
			<th>2행 2열</th>
		</tr>
		<tr>
			<th>3행 1열</th>
			<th>3행 2열</th>
		</tr>
	</table>
</body>
</html>
