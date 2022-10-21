<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>CARE LAB</title>
	<link href="/care_jsp/css/main.css" type="text/css" rel="stylesheet">
	<link href="/care_jsp/css/sub.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="wrap">
		<header>
			<div id="login">
			<% if(session.getAttribute("id") == null){%>
				<a href="/care_jsp/member/login.jsp"> Login </a> 
				<a href="/care_jsp/member/member.jsp"> Membership </a>
			<%}else{ %>
				<a href="/care_jsp/member/logout.jsp"> Logout </a> 
				<a href="/care_jsp/member/modify.jsp"> Modify </a>
			<%} %>
			</div>
			<div id="logo">
				<h1> <a href="/care_jsp/index.jsp">CARE LAB</a></h1>
			</div>
			<nav>
				<ul>
					<li> <a href="/care_jsp/index.jsp">HOME</a></li>
					<li> <a href="/care_jsp/company/welcome.jsp">COMPANY</a></li>
					<li> <a href="#">SOLUTIONS</a></li>
					<li> <a href="/care_jsp/center/list.jsp">CUSTOMER CENTER</a></li>
				</ul>
			</nav>
		</header>
		
		
		
		
		
		
		
		