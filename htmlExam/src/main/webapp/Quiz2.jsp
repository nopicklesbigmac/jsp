<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3</title>

<style>
	#logo{
		margin: auto;
		width: 1000px;
		height : 200px;
		text-align : center;
		line-height: 180px;
		background : #B7F0B1;
		/* border : 1px solid; */
	}
	#nav{
		margin: auto;
		width: 1000px;
		background : orange;
		height : 60px;
		/* border : 1px solid; */
	}
	.menu{
		float: left;
		width: 105px;
		height : 35px;
		border : 1px solid;
		text-align : center;
		line-height: 30px;
		/* 상 우 하 좌 */
		margin: 10px 10px 10px 25px;
		background : #FAED7D;
	}
	#article{
		margin: auto;
		width: 1000px;
		height : 500px;
		background: #B5B2FF;
		/* border : 1px solid; */
	}
	.box{
		width: 200px;
		height : 200px;
		background: #3DB7CC;
		float : left;
		margin: 25px;
		/* border : 1px solid; */
	}
	
</style>
</head>
<body>
	<div id="logo">
		<h1>CARE LAB</h1>
	</div>
	<div id="nav">
		<div class="menu">Home</div>
		<div class="menu">Login</div>
		<div class="menu">Membership</div>
		<div class="menu">Record</div>
		<div class="menu">Free</div>
		<div class="menu">Q&amp;A</div>
		<div class="menu">Download</div>
	</div>
	<div id="article">
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
	</div>
</body>
</html>