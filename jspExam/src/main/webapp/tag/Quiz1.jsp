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
<h2>구구단</h2>

	<%	
		for (int i=1; i<10;i++){
			out.print(i+"단<br>");
			for (int j=1; j<10;j++){
				out.print( String.format("%d X %d = %d <br>",i,j,i*j)); 
			}
		}
	%>
	

	
</body>
</html>