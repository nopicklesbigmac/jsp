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
		String save="";
		if(cookies != null){
			for(Cookie c:cookies){
				if(c.getName().equals("saveid")){
					save = c.getValue();
				}
			}
		}
	%>
	<form action="ex4_loginchk.jsp" method="post">
		<input type="text" name="id" value="<%=save%>"><br>
		<input type="password" name="pass"><br>
		<input type="checkbox" name="saveid" value="saveid">아이디저장<br>
		<input type="submit" value="로그인">
		<input type="reset" value="취소"><br>
	</form>

</body>
</html>