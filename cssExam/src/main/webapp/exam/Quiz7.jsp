<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz7</title>
<style>
	#login_box{ width:300px; height: 100px; margin: 10px;}
	.idpw_box {float: left;}
	.idpw_box input { width:150px; height: 30px;}
	div button { width:70px; height: 72px;}
	.a_box{ clear: both; margin: 5px;}
	a {text-decoration: none; color: black;}
</style>
</head>
<body>
	<div id="login_box">
		<div class="idpw_box">
			<input type="text" placeholder="아이디"><br>
			<input type="password"  placeholder="비밀번호">
		</div>
		<div>
			<button>로그인</button>
		</div>
		<div class="a_box">
			<a href="register.jsp"> 회원 가입 </a> |
			<a href="member_search.jsp"> ID/PW찾기 </a>
           <p> 회원가입 텍스트를 클릭하면 register.jsp
            ID/PW찾기 텍스트를 클릭하면 member_search.jsp 로 이동.
            </p>
		</div>
	</div>
</body>
</html>










