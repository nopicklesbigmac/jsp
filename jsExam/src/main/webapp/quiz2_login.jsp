<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="quiz2_header.jsp" %>
	<div id="img_mem"></div>

	<nav id="nav_sub">
		<ul>
			<li> <a href="quiz2_member.jsp"> 회원 가입 </a></li>
			<li> <a href="modify.jsp"> 회원 수정 </a></li>
			<li> <a href="delete.jsp"> 회원 탈퇴 </a></li>
			<li> <a href="quiz2_login.jsp"> 로그인 </a></li>
			<li> <a href="logout.jsp"> 로그아웃 </a></li>
		</ul>
	</nav>
<style>
#nav_sub{
	height: 200px;
	width: 27%;
	margin: 60px 10px 10px 10px;
	float: left;
}
#article_sub .fieldset_mem
{
	border: none;
	width: 570px;
	padding-left: 50px;
	margin: 20px;
}
#article_sub .fieldset_mem label { float: left; width: 200px; margin: 10px;}
#article_sub .fieldset_mem input 
{ 
	width: 200px; margin: 5px;
	background-color: #D4F4FA;
	height: 30px;
}
#buttons_mem
{
	height: 130px;
	margin: 30px 20px 20px 20px;
	position: relative;
	left: 60px;
}
#buttons_mem .submit_mem, #buttons_mem .cancel_mem
{
	font-size: 16px;
	color: #fff;
	border: 1px solid;
	width: 190px;
	height: 40px;
	margin: 0px 10px;
}
</style>
	<article id="article_sub">
	 <h1>로그인</h1>
	 	<form id="f">
	 		<fieldset class="fieldset_mem">
	 			<label>아이디</label><input type="text" name="id" id="id"><br>
	 			<label>패스워드</label><input type="password" name="pw" id="pw"><br>
	 		</fieldset>
	 		<div id="buttons_mem">
	 			<input type="button" class="submit_mem" value="로그인" onclick="login_check()">
	 			<input type="reset" class="cancel_mem" value="취소">
	 		</div>
	 	</form>
	</article>

<%@ include file="quiz2_footer.jsp" %>
