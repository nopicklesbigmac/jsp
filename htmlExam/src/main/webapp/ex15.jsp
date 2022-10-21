<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3</title>
<style>
	body{margin:0px;padding:0px}
	#wrap{
		width:80%;
		border:1px selid;
		margin: auto;
		background:#EAEAEA;
		height:300px;
	}
	.box1,.box2,.box3{
		width:200px;height:200px;
		margin:20px; padding:20px;
		border:1px selid;
		float:left;
	}
	.box1 img,.box2 img,.box3 img{float:left;}
	.box1 h3,.box2 h3,.box3 h3{/* border:1px selid; */ height:50px; text-align:center;}
	.box1{background:#D9D6FF; margin-left:130px;}
	.box2{background:#F6FFCC;}
	.box4{background:#53C14B;}
</style>
</head>
<body >
	<div id="wrap">
		<div class="box1">
			<img src="images/icon1.png"?>
			<h3> 지구사랑 </h3>
			<p>
		 	우리 회사는 지구의 환경 보호 
			</p>
		</div>
		<div class="box2">
			<img src="images/icon2.png"?>
			<h3> 지구 보호 </h3>
			<p>
			 우리 회사는 지구의 환경 보호 
			</p>
		</div>
		<div class="box3">
			<img src="images/icon3.png"?>
			<h3> 환경 어플  </h3>
			<p>
			 우리 회사의 개발자는
			</p>
		</div>
	</div>
</body>
</html>
