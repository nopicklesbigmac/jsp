<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex14</title>
<style>
	div { border: 3px solid blue;}
	header { border: 3px solid pink;}
	nav {float: right; width:170px; height:195px; border:3px solid gold;}
	section {margin: 0 0 0 177px; width:315px; border:3px solid gold;}
	#wrap {overflow: auto;}
	footer{height : 20px; border: 3px solid skyblue;}
</style>
</head>
<body >
  <div id ="wrap">
  		<header><h1>제목</h1></header>
		<nav>
		<span>목차 (nav)</span>
		<ul>
			<li><a href="#">google</a></li>
			<li><a href="#">apple</a></li>
			<li><a href="#">w3c</a></li>
		</ul>
		</nav>
	<section>
		<span>section1</span><p>float 속성은 시맨틱 문서 구조에 유용하게 사용 할 수 있습니다.</p>
	</section>
	<section>
		<span>section2</span><p>float 속성은 시맨틱 문서 구조에 유용하게 사용 할 수 있습니다.</p>
	</section>
	<footer>마지막글 </footer>
  </div>
</body>
</html>