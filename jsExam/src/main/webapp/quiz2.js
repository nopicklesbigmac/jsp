function member_check(){
	id = document.getElementById('id').value;
	pw = document.getElementById('pw').value;
	confirm_pw = document.getElementById('confirm_pw').value;
	name = document.getElementById('name').value;
	
	if(id == ""){
		alert('아이디는 필수 항목입니다.');
	}else if(pw == ""){
		alert('비밀번호는 필수 항목입니다.');
	}else if(confirm_pw == ""){
		alert('비밀번호 확인은 필수 항목입니다.');
	}else if(name == ""){
		alert('이름은 필수 항목입니다.');
	}else{
		document.getElementById('f').action = 'member_check.jsp';
		document.getElementById('f').submit();
	}
}
function pw_check(){
	pw = document.getElementById('pw');
	confirm_pw = document.getElementById('confirm_pw');
	if(pw.value == confirm_pw.value){
		document.getElementById('check_text').innerHTML = '일치';
	}
	else {
		document.getElementById('check_text').innerHTML = '불일치';
		pw.value="";
		confirm_pw.value="";
		confirm_pw.focus();
	}
}
function login_check(){
	id = document.getElementById('id').value;
	pw = document.getElementById('pw').value;
	
	if(id == ""){
		alert('아이디는 필수 항목입니다.');
	}else if(pw == ""){
		alert('비밀번호는 필수 항목입니다.');
	}else{
		document.getElementById('f').action = 'login_check.jsp';
		document.getElementById('f').method = 'post';
		document.getElementById('f').submit();
	}
}
