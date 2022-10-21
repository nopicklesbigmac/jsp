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
		String id =""; 
		String check =""; 
		if((String)session.getAttribute("saveid")!=null) {
			id = (String)session.getAttribute("saveid");
			check = "checked=checked";
			}
	%>


<form action="ex2_loginchk.jsp" method="post">
	<input type="text" name="id" value="<%=id%>"><br>
	<input type="password" name="pass"><br>
	<input type="checkbox" name="saveid" value="saveid" <%=check%>>아이디저장<br>
	<input type="submit" value="로그인">
	<input type="reset" value="취소"><br>
</form>
</body>
</html>