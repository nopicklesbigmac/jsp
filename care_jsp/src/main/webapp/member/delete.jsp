<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>  
<%
	String id = (String)session.getAttribute("id");
	if(id == null || id == ""){
		response.sendRedirect("login.jsp");
		return;
	}
%>
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
 <h1> 회원탈퇴 </h1>
 <form action="deleteService.jsp" method="post" id="form_login">
	 
		<label>아이디 </label><input type="text" value="<%=session.getAttribute("id")%>" disabled="disabled"> <br>
		<label>패스워드</label> <input type="password" name="pw" id="pw"> <br>
		<label>패스워드 확인</label> <input type="password" name="confirmPw" id="confirmPw"><br>
	
	 <div id="buttons_login">
		 	<input type="submit" value="탈퇴"  class="submit_mem" >
		 	<input type="button" value="취소"
			 onclick="javascript:location.href='/care_jsp/index.jsp';" class="cancel_mem">
	 </div>
 	</form>
 </article>
 <%@ include file="../footer.jsp"%>
