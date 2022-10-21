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
		Cookie cookie = new Cookie("popup","popup");
		cookie.setMaxAge(30);
		response.addCookie(cookie);	
		out.print("<script>window.close();</script>");
	%>
	
</body>
</html>