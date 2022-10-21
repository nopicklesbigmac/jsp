<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public int Data(int data){
		if (data<0)
			return -data ;
			return data;
		}
		
	%>
	<%="7, 절대 값 = "+ Data(7) %>
	<%="<br>-7, 절대 값 = "+ Data(-7) %>
	
</body>
</html>