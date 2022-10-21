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

	<article id="article_sub">
	 <h1> 회원 가입 </h1>
	 	<form id="f">
	 	
	 		<fieldset class="fieldset_mem">
	 			<legend>기본 정보</legend>
	 			<label>아이디</label><input type="text" name="id" id="id"><br>
	 			<label>패스워드</label><input type="password" name="pw" id="pw"><br>
	 			<label>패스워드 확인</label>
	 			<input type="password" name="confirm_pw" id="confirm_pw" onchange="pw_check()">
	 			<label id="check_text"></label><br>
	 			<label>이름</label><input type="text" name="name" id="name"><br>
	 		</fieldset>
	 		
	 		<fieldset class="fieldset_mem">
	 			<legend>부가 정보</legend>
	 			<label>이메일</label><input type="text" name="email" id="email"><br>
	 			<label>핸드폰</label><input type="text" name="mobile" id="mobile"><br>
	 			<label>주소</label><input type="text" name="address" id="address"><br>
	 		</fieldset>
	 		
	 		<div id="buttons_mem">
	 			<input type="button" class="submit_mem" value="회원 가입" onclick="member_check()">
	 			<input type="reset" class="cancel_mem" value="취소">
	 		</div>
	 	</form>
	</article>
<%@ include file="quiz2_footer.jsp" %>
