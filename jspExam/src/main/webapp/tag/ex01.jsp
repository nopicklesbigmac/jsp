<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- http://localhost:8085/jspExam/tag/ex01.jsp -->
<%-- jsp 주석 
	<%@ %>: Directive(지시자, 지시어) : jsp 페이지 환경성정을 담고 있는 영역
	<% %>: Scriptlet(스크립트렛) : 자바 코드 작성 영역 ( 작성된 코드는 메소드내부에 담김 )
	<%! %>: Declartion(선언문) : 자바 코드 작성 영역 ( 작성된 코드는 메소드내부에 담김 )
	<%= %>: Exepres0sion(표현식) : 출력 문장을 작성 영역
 --%>
 
	<%
		int data = 10;
		System.out.println(data);
		out.print("<h2>"+data+"</h2>");
	%>
	<h2> <%=data %>></h2>
	<%="<h2>"+data+"</h2>" %>
	
</body>
</html>