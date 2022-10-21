<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex14</title>
<style>
	div {; border: 3px solid green;}
	.img {float: right;}
	.auto {overflow: auto;}
	.hidden {overflow: hidden;}
</style>
</head>
<body >
   	<p>이미지가 박스 영역을 벗어남</p>
   	<div class="auto">
   		<img class="img1" src="/cssEx/images/icon1.png" width="50" height= "50">
   		이미지가 오른쪽으로 정렬 되어 있는데, 박스 영역을 벗어 났습니다.
   	</div>
   	<br><br><br>
   	<div class="hidden">
   		<img class="img1" src="/cssEx/images/icon2.png" width="50" height= "50">
   		이미지가 박스 영역을 벗어날  경우에는 overflow 속성을 설정하여  해결합니다.
   	</div>
</body>
</html>