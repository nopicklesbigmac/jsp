<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String id = (String)session.getAttribute("id");
if(id == null){
	out.print("<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>");
	return;
}

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
	<jsp:include page="/actionTag/default/header.jsp"/>
	<div align="center">
		<h1>회원 탈퇴</h1>
		<table>
		<tr><td>
			<form action="deleteService.jsp" method="post" id="f">
				<input type="text" value="<%=session.getAttribute("id") %>" disabled="disabled"> <br>
				<input type="password" name="pwd1" placeholder="비밀번호"><br>
				<input type="password" name="pwd2" placeholder="비밀번호 확인" ><br>
				<input type="submit" value="탈퇴"><br>
			</form>
		</td></tr>
		</table>
	</div>
	<jsp:include page="/actionTag/default/footer.jsp"/>
</body>
</html>