<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="img_mem"></div>

<nav id="nav_sub">
	<ul>
		<li> <a href="member.jsp"> 회원 가입 </a></li>
		<li> <a href="modify.jsp"> 회원 수정 </a></li>
		<li> <a href="delete.jsp"> 회원 탈퇴 </a></li>
		<li> <a href="login.jsp"> 로그인 </a></li>
		<li> <a href="logout.jsp"> 로그아웃 </a></li>
	</ul>
</nav>

<article id="article_sub">
 <h1> 회원 가입 </h1>
 	<form action="memberService.jsp" method="post">
 	
 		<fieldset class="fieldset_mem">
 			<legend>기본 정보</legend>
 			<label>아이디</label><input type="text" name="id"> <div class="clear"></div>
 			<label>패스워드</label><input type="password" name="pw"> <div class="clear"></div>
 			<label>패스워드 확인</label><input type="password" name="confirmPw"> <div class="clear"></div>
 			<label>이름</label><input type="text" name="name"> <div class="clear"></div>
 		</fieldset>
 		
 		<fieldset class="fieldset_mem">
 			<legend>부가 정보</legend>
 			<label>이메일</label><input type="text" name="email"> <div class="clear"></div>
 			<label>핸드폰</label><input type="text" name="mobile"> <div class="clear"></div>
 			<label>주소</label><input type="text" name="address"> <div class="clear"></div>
 		</fieldset>
 		
 		<div id="buttons_mem">
 			<input type="submit" class="submit_mem" value="회원 가입">
 			<input type="reset" class="cancel_mem" value="취소">
 		</div>

 	</form>
</article>
<%@ include file="../footer.jsp"%>




