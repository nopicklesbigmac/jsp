<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
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
	<h1> 게시글 목록</h1>
		<table>
		 <tr>
		 	<th class="no">번호</th>
		 	<th class="title">제목</th>
		 	<th class="writer">작성자</th>
		 	<th class="date">날짜</th>
		 	<th class="hit">조회수</th>
		 </tr>
		 <tr>
		 	<td>1</td>
		 	<td class="subject">	
		 		<a href="view.jsp?num=1">게시글 제목</a>
		 	</td>
		 	<td>아이디</td>
		 	<td>작성시간</td>
		 	<td>22</td>
		</tr>
		</table>
		
		<form action="list.jsp?mode=search" method="post" id="list_form">
			<select name="find">
				<option value="subject">제목</option>
				<option value="content">내용</option>
				<option value="id">작성자</option>
			</select>
			<input type="text" name="data">
			<input type="submit" value="검색">
		</form>
		
		<div class="clear"></div>
		<div id="page_control" style="text-decoration: none">
			<a href='list.jsp?pageNumber=1'>Prev </a>
			<a href='list.jsp?pageNumber=1'> 1 2 </a>
			<a href='list.jsp?pageNumber=2'>Next </a>
		</div>
		<div id="center_button">
			<a href="write.jsp"> <img src="/care/images/write.png"> </a>
		</div>
</article>
<%@ include file="../footer.jsp"%>
