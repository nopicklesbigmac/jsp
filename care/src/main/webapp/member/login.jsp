<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="img_mem"></div>
<nav id="nav_sub">
	<ul>
		<li><a href="member.jsp"> 회원 가입 </a></li>
		<li><a href="modify.jsp"> 회원 수정 </a></li>
		<li><a href="delete.jsp"> 회원 탈퇴 </a></li>
		<li><a href="login.jsp"> 로그인 </a></li>
		<li><a href="logout.jsp"> 로그아웃 </a></li>
	</ul>
</nav>

<article id="article_sub">
	<h1>로그인</h1>
	<form id="form_login">
		<label>아이디</label> <input type="text" name="id" id="id"> 
		<label>패스워드</label> <input type="password" name="pw" id="pw">

		<div id="buttons_login">
			<input type="button" value="로그인" class="submit_mem" onClick="check()">
			<input type="button" value="취소"
				onclick="javascript:location.href='/care/index.jsp';"
				class="cancel_mem">
		</div>
	</form>
</article>

<%@ include file="../footer.jsp"%>





