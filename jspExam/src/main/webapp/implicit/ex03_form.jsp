<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02</title>
</head>
<body>
	<form action="ex03_result.jsp" method="post">
		이름 : <input type="text" name="name"><br>
		주소 : <input type="text" name="address"><br>
		좋아하는 항목을 체크하세요 <br>
		<input type="checkbox" name="like" value="꿀잠">꿀잠<br><br>
		<input type="checkbox" name="like" value="spaveout">멍떄리기<br><br>
		<input type="checkbox" name="like" value="home">집<br><br>
		<input type="submit" value="완료">
	</form>
</body>
</html>