<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script  type="text/javascript">
	function inputCheck(){
	var str = document.myForm.id.value;
	if(str==""){
		alert("아이디 입력!");
		document.myForm.id.focus();
		return;
	}
	str = document.myForm.pw.value;
	if(str==""){
		alert("비밀번호 입력!");
		document.myForm.pw.focus();
		return;
	}
	str = document.myForm.confirmPw.value;
	if(str==""){
		alert("비밀번호 확인 입력!");
		document.myForm.confirmPw.focus();
		return;
	}
	str = document.myForm.name.value;
	if(str==""){
		alert("이름 입력!");
		document.myForm.name.focus();
		return;
	}
	document.myForm.action = "memberService.jsp";
	document.myForm.submit();
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" name="myForm">
 <h1> 회원 가입 </h1>
 		<input type="text" name="id" placeholder="아이디"><br>
 		<input type="password" name="pw" placeholder="비밀번호"><br>
 		<input type="password" name="confirmPw"placeholder="비밀번호 확인"><br>
 		<input type="text" name="name" placeholder="이름"><br>
		<input type="button" value="회원 가입" onclick="inputCheck();">
 		<input type="reset" value="취소">

</form>

</body>
</html>