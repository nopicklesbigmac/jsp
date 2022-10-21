<%@page import="session_quiz.MemberDAO"%>
<%@page import="session_quiz.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userInfo</title>
</head>
<body>
	<%@ include file="/session_quiz/header.jsp" %>

	
	<%
		String id = (String)session.getAttribute("id");
		if(id == null){
			response.sendRedirect("login.jsp");
			return;
		}
		request.setCharacterEncoding("utf-8");
		id = request.getParameter("id");
		MemberDAO memberDao = new MemberDAO();
		MemberDTO member= memberDao.selectId(id);
	%>
	<div align="center">
		<h1>개인 정보</h1>
		아이디 : <%=member.getId() %> <br> 
		비밀번호 : <%=member.getPwd1() %><br>
		이름 : <%=member.getName() %> <br>
		주소 : <%=member.getAddr() %> <br>
		전화번호 : <%=member.getTel() %> <br><br>
		<button type="button" onclick="location.href='update.jsp?id=<%=member.getId()%>'">회원 수정</button>
		<button type="button" onclick="location.href='delete.jsp?id=<%=member.getId()%>'">회원 삭제</button>
	</div>	
		<%@ include file="/session_quiz/footer.jsp" %>
</body>
</html>



















