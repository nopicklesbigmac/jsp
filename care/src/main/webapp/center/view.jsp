<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="img_cen"></div>
<nav id="nav_sub">
		<ul>
			<li><a href="list.jsp">게시글 목록</a></li>
			<li><a href="write.jsp">게시글 작성</a></li>
			<li><a href="delete.jsp">게시글 삭제</a></li>
			<li><a href="modify.jsp">게시글 수정</a></li>
		</ul>
	</nav>

<article id="article_sub">

	<h1>게시글 확인</h1>
	<div id="view_title">
		<div class="view_title1">제목 출력</div>
		<div class="view_title2">아이디 출력 | 조회수: 1 | 작성시간</div>
	</div>
	<div id="view_content">내용 출력</div>

	<div id="view_file">첨부 파일 : <a href="fileDown.jsp?fileName=파일명.txt">파일명.txt</a></div>

	<div id="center_button">
		<a href="list.jsp"><img src="/care/images/list.png"></a>
		<a href="modify.jsp"><img src="/care/images/modify.png"></a>
		<a href="delete.jsp"><img src="/care/images/delete.png"></a>
		<a href="write.jsp"><img src="/care/images/write.png"></a>
	</div>
	
</article>
<%@ include file="../footer.jsp"%>
















