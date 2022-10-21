<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>quiz1_register</title>
<script>
	function validationInput(){
		id = document.getElementById('id').value;
		pw = document.getElementById('pw').value;
		confirmPw = document.getElementById('confirmPw').value;
		if(id == "" ){
			alert('아이디는 필수 사항입니다.');
			return ;
		}
		if(pw == "" ){
			alert('비밀번호는 필수 사항입니다.');
			return ;
		}
		if(confirmPw == "" ){
			alert('비밀번호 확인은 필수 사항입니다.');
			return ;
		}
		document.getElementById('f').action = "quiz1_success.jsp";
		document.getElementById('f').submit();
}
	
	function equalsPassword(){
		pw = document.getElementById('pw');
		confirmPw = document.getElementById('confirmPw');
		/* document.getElementById('msg').style.visibility = "visible"; */
		
		 if(pw.value == "" || confirmPw.value == ""){
			document.getElementById('msg').innerHTML = '';
			/* document.getElementById('msg').style.visibility = "hidden"; */
		}else if(pw.value == confirmPw.value){
			document.getElementById('msg').innerHTML = '일치';
		} else {
			document.getElementById('msg').innerHTML = '불일치';
		}
	}
</script>
</head>
<body>
	<form id="f">
		<input type="text" placeholder="아이디" id="id" >
		<span>(*필수 항목)</span><br>
		<input type="text" placeholder="비밀번호" id="pw" onkeyup="equalsPassword()">
		<span>(*필수 항목)</span><br>
		<input type="text" placeholder="비밀번호 확인" id="confirmPw" onkeyup="equalsPassword()">
		<span id="msg"></span><br>
		<input type="text" placeholder="이름">
		<br>
		<input type="button" value="등록" onclick="validationInput()">
	</form>
</body>
</html>