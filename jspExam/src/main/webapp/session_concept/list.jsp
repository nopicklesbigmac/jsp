<%@page import="session_concept.PageService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="session_concept.MemberDTO"%>
<%@page import="session_concept.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<style>
	a{text-decoration: none;}
</style> 
</head>
<body>
	<%
		/*
			페이지 컨드롤에서 숫자, 이전, 다음을 클릭 시 페이지번호를 갖고 서버에 요청됨.
			자료형은 문자열, 정수로 변환하여 사용합니다.
			만약 형변환시 Exception 발생하면 기본 값은 1, 0 이하의 값이 전달 되면 기본 값은 1입니다.
		*/
		String cp = request.getParameter("currentPage");
		int currentPage = 0;
		try{
			currentPage = Integer.parseInt(cp);
		} catch(Exception e){
			currentPage = 1;
		}
		if(currentPage < 1)
			currentPage = 1;
		
		// pageBlock, 하나의 페이지에 보여질 회원의 수 
		int pageBlock = 3;
		
		/*
			 데이터베이스에서 각 페이지별 필요한 회원정보만 조회
			 데이터베이스에서의 시작, 끝 정보를 begin, end에 저장하여 selectAll메소드로 전달.
			 currentPage = 1;
			 end = 1 * 3;
			 begin = 3 + 1 - 3;
			 
			 currentPage = 2;
			 end = 2 * 3;
			 begin = 6 + 1 - 3;
		*/
		int end = currentPage * pageBlock; 
		int begin = end + 1 - pageBlock;
		
		/*
			select == "" 와 같다면 "전체"를 선택한 경우 모든 데이터 출력.
			select != "" 와 같다면 아이디 또는 이메일을 선택 후 search에 담긴 데이터 조회 결과를 출력.
		*/
		String search = request.getParameter("search");
		if(search == null)
			search = "";
		String select = request.getParameter("select");
		ArrayList<MemberDTO> members = null;
		MemberDAO memberDao = new MemberDAO();
		int totalCount = 0;

		if(select == null || select == ""){
			System.out.println("select : " + select);
			members = memberDao.selectAll(begin, end);
			totalCount = memberDao.count();
		}else {
			if(search == "" || search == null){
				System.out.println("search : " + search);
				response.sendRedirect("list.jsp");
				return;
			}
			members = memberDao.selectAll(begin, end, select, search);
			totalCount = memberDao.count(select, search);
		}
		//pageControl에 필요한 정보 4가지 전달.
		String url = "list.jsp?select="+select+"&search="+search+"&currentPage=";
		String result = PageService.getNavi(url, currentPage, pageBlock, totalCount);
		 
		memberDao.close();
	%>
	<table border="1">
		<tr>
			<th>아이디 </th>
			<th>비밀번호 </th>
			<th>이름 </th>
			<th>이메일 </th>
		</tr>
		<% 
			for(MemberDTO member : members){ 
			
		%>
			<tr>
				<td><%=member.getId() %></td>
				<td><%=member.getPw() %></td>
				<td><%=member.getName() %></td>
				<td><%=member.getEmail() %></td>
			</tr>
		<%} %>
	</table>
	<div id="page_control" style="margin-left:70px">
		<%=result %>
	</div>
	<form>
		<table>
		<tr>
			<td>
				<select name="select">
					<%
						if(select == null || select == ""){
					%>
					<option value="">전체</option>
					<option value="id">아이디</option>
					<option value="email">이메일</option>
					<%}else if(select.equals("id")){ %>
					<option value="">전체</option>
					<option value="id" selected="selected">아이디</option>
					<option value="email">이메일</option>
					<%}else if(select.equals("email")){ %>
					<option value="">전체</option>
					<option value="id">아이디</option>
					<option value="email" selected="selected">이메일</option>
					<%} %>
				</select>
				<input type=text name='search' value="<%=search %>" />
				<input type=submit name='searchBtn' value='검색' style="width: 60px; "/>
			</td>
		</tr>
		</table>
	</form>
	<br>
	
	<a href="index.jsp" style="text-decoration: none">인덱스 페이지로 이동</a>
</body>
</html>



