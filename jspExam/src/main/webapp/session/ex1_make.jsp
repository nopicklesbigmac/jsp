<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/*
		세션의 데이터를 저장할떄 사용하는 메소드
		session.setAttribute(이름,데이터);
	*/
		session.setAttribute("id", "test");
		session.setAttribute("hobbys", new String[]{"멍때리기","독서"});
	/*
		세션의 시간
	*/	
		session.setMaxInactiveInterval(60*60);
		
	%>
	<a herf="ex1_check.jsp">세션확인</a>
</body>
</html>