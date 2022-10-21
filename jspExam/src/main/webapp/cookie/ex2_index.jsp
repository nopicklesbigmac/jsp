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
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie c:cookies){
				out.print("쿠키 이름 :" +c.getName()+"<br>");
				out.print("쿠키 값 :" +c.getValue()+"<br>");
			}
		}
	%>
	<a href="ex2_make.jsp">쿠키 생성하기</a>
</body>
</html>