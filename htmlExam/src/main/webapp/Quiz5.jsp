<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>quiz5</title>
<style>
table{margin: 50px auto;}
</style></head>
<body>
	<form action="quiz6.jsp" method="get">
		<table>
			<tr>
				<td colspan="2"> 
					다음 <span style="backgrond-color:#9C8136"><b>내용에 맞게 입력</b></span> 하시오.
				</td>
				<td rowspan="5">
					<img src="images/test.jpg" width=200px height=130px>
				</td>
			</tr>
			 <tr>
			 	<td colspan="2">전공 분야를 입력하세요.
			 	<select name="major">
					<option value="software">소프트웨어</option>		 	
					<option value="system">시스템</option>		 	
					<option value="network">네트워크</option>		 	
					<option value="database">데이터베이스</option>		 	
			 	</select>
			 	</td>
			 </tr>
			 <tr>
			 	<td>이름</td><td><input type="text"></td>
			 </tr>
			 <tr>
			 	<td>아이디</td><td><input type="text"></td>
			 </tr>
			 <tr>
			 	<td>비밀번호</td><td><input type="password"></td>
			 </tr>
			<tr>
				<td colspan="3">
			 		<fieldset>
			 			<legend>성별 조사</legend>
			 			<label>여성</label><input type="radio" name="gender" >
			 			<label>남성</label><input type="radio" name="gender">
			 		</fieldset>
			 	</td>
			 </tr>
			 <tr>
			 	<td colspan="3">
			 		<fieldset>
			 			<legend>취미 조사</legend>
			 			<label>책 읽기</label><input type="checkbox">
			 			<label>공부 하기</label><input type="checkbox">
			 			<label>책 읽으며 공부하기</label><input type="checkbox">
			 			<label>컴퓨터</label><input type="checkbox">
			 		</fieldset>
			 	</td>
			</tr>
			 <tr>
			 	<td colspan="3">
			 		<fieldset style="width:500px;">
			 			<legend>하고 싶은 말</legend>
			 			<textarea rows="3" cols="70"></textarea>
			 		</fieldset>
			 	</td>
			 </tr>
			 <tr>
			  <td>
			  	<input type="submit" value="완료">
			  	<input type="reset" value="다시 작성">
			  </td>
			 </tr>
		</table>
	
	</form>
</body>
</html>

