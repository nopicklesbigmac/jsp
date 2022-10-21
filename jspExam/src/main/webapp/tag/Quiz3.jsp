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
		public int add(int data1,int data2){
			return data1 + data2;	
		}
		public int sub(int data1,int data2){
			return data1 - data2;	
		}
	%>
	<%="add()  : "+add(7,5) %>
	<%="<br>sub()  : "+sub(7,5) %>
</body>
</html>