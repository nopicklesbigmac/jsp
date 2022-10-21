<%@page import="center.CenterDTO"%>
<%@page import="center.CenterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%
	String n = request.getParameter("num");

	if(n == null || n ==""){
		response.sendRedirect("list.jsp");
		return;
	}
	
	int num = 0;
	try{
		num = Integer.parseInt(n);
	}catch(Exception e){
		response.sendRedirect("list.jsp");
		return;
	}
	
	CenterDAO centerDao = new CenterDAO();
	CenterDTO center = centerDao.selectNum(num);
	if(center == null){
		response.sendRedirect("list.jsp");
		return;
	}
	
	String subject = center.getSubject();
	String content = center.getContent();
	String writeId = center.getId();
	String writeTime = center.getWriteTime();
	String fileName = center.getFileName();
	if(fileName == null)
		fileName = "";
	int hit = center.getHit();
	hit++;
	centerDao.incrementHit(num, hit);
 %>
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
		<div class="view_title1"><%=subject %></div>
		<div class="view_title2"><%=writeId %> | 조회수: <%=hit %> | <%=writeTime %></div>
	</div>
	<div id="view_content"><%=content %></div>

	<div id="view_file">첨부 파일 : 
	<a href="fileDown.jsp?fileName=<%=fileName%>&writeId=<%=writeId%>"><%=fileName %></a></div>

	<div id="center_button">
		<a href="list.jsp"><img src="/care_jsp/images/list.png"></a>
		 <%if(writeId.equals(session.getAttribute("id"))){ %>
		<a href="modify.jsp?num=<%=num %>"><img src="/care_jsp/images/modify.png"></a>
		<a href="delete.jsp?num=<%=num %>"><img src="/care_jsp/images/delete.png"></a>
		<%} %>
		<a href="write.jsp"><img src="/care_jsp/images/write.png"></a>
			
		
	</div>
	
</article>
<%@ include file="../footer.jsp"%>
















