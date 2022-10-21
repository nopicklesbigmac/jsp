<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03</title>
	<style>
		h1[align] {color:orange; background-color: gray; }
		h1[m] {color:red;background-color: gray; }
		p[text] {color:blue;background-color: yellow; }
		h1[text="attr3"] {color:green;background-color: pink; }
	</style>
</head>
<body>
	<h1 align="left">a</h1>
	<h1 m>m속성이름 선택자</h1>
	<h1 m="표현내용">m속성이름 선택자</h1>
	
	<p text="attr">text속성 이름 선택자</p>
	<h1 text="attr3">속성과 속성값 선택자</h1>
	<h1 text="attr2">속성과 속성값 선택자</h1>
	<p>속성 선택 없음</p>
</body>
</html>