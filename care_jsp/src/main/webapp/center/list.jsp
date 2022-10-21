<%@page import="center.PageVO"%>
<%@page import="center.CenterDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="center.CenterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String pageNumber = request.getParameter("pageNumber");
	
	String mode = request.getParameter("mode");
	String find = request.getParameter("find");
	String data = request.getParameter("data");

	CenterDAO centerDao = new CenterDAO();
	ArrayList<CenterDTO> list;
	if(mode != null && mode.equals("search")){
		if(data == null || data == ""){
			out.print("<script>alert('검색어를 입력하세요.');history.back();</script>");
			return;
		}
		 list = centerDao.search(find, data);
	}else
	 	list = centerDao.selectAll();
	
	PageVO pageVo = new PageVO(3);
	pageVo.setPageNumber(pageNumber);
	pageVo.setTotalCount(list.size());
	centerDao.close();
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
<style>
	a{text-decoration: none}
</style>
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
		 <!--http://localhost:8085/care/center/list.jsp?pageNumber=2 -->
		 <% 
		 // block의 배수가 아닌 마지막 페이지 : i < pageVo.getTotalCount()
		 /*
		 	getEnd() 1,2,3 
		 	11
		 	9
		 	totalCount = 10;
		 1 (0,1,2)
		 2 (3,4,5)
		 3 (6,7,8)
		 4 (9,)
		 */
		 for(int i = pageVo.getStart(); i < pageVo.getEnd() && i < pageVo.getTotalCount(); i++){
			 CenterDTO c = list.get(i);
		 %>
			 <tr>
			 	<td><%=c.getNum() %></td>
			 	<td class="subject">	
			 		<a href="view.jsp?num=<%=c.getNum() %>"><%=c.getSubject() %></a>
			 	</td>
			 	<td><%=c.getId() %></td>
			 	<td><%=c.getWriteTime() %></td>
			 	<td><%=c.getHit() %></td>
			</tr>
		<%}%>
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
			<%
			if(pageVo.getPageNumber() <= 1){
					out.print("<a href='#'>[이전] </a>");
			}else{
				int tmp = pageVo.getPageNumber() - 1;
				out.print("<a href='list.jsp?pageNumber="+tmp+"&mode="+mode+"&find="+find+"&data="+data+"'>[이전] </a>");
			} 
			
			for(int i = 1; i <= pageVo.getTotalPage(); i++){
				if(pageVo.getPageNumber() == i)
					out.print("<b> " + i + " </b>");
				else	
					out.print("<a href='list.jsp?pageNumber="+i+"&mode="+mode+"&find="+find+"&data="+data+"'> "+ i +" </a>");
			}
			
			if(pageVo.getPageNumber() >= pageVo.getTotalPage()){
				out.print("<a href='#'>[다음] </a>");
			}else{
				int tmp = pageVo.getPageNumber() + 1;
				out.print("<a href='list.jsp?pageNumber="+tmp+"&mode="+mode+"&find="+find+"&data="+data+"'>[다음] </a>");
			} 
			
			%>
		</div>
		<div id="center_button">
			<a href="write.jsp"> <img src="/care_jsp/images/write.png"> </a>
		</div>
</article>
<%@ include file="../footer.jsp"%>
