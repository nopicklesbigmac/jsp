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
<h2>짝수 홀수</h2>

	<%	
		int total=0, evenTotal=0,oddTotal=0;
	
		for (int i=1; i<=100;i++){
			total += i;
			if(i%2==0){
				evenTotal +=i;
			}else{
				oddTotal +=i;
			}
		}
		out.print("총합 : "+total+"<br>");
		out.print("짝수합 : "+evenTotal+"<br>");
		out.print("홀수합 : "+oddTotal);
	%>
	
	
	
</body>
</html>