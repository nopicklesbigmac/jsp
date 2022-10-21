<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
	<% 
		Cookie[] cookies = request.getCookies();
		boolean cook=true;
		if(cookies != null){
			for(Cookie c:cookies){
				if(c.getName().equals("popup")){
					cook = false;
					out.print(c.getName());
				}
			}
		}
		if(cook){
			%>
			<script>window.open("ex3_popup.jsp","팝업창","width=300,height=250")</script>
			<%
			} 
	%>
</body>
</html>