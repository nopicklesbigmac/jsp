<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
    function check() {
        var pw = document.getElementById("pass1").value;
        var pw2 = document.getElementById("pass2").value;
        var id = document.getElementById("Id").value;
        var pattern1 = /[0-9]/;
        var pattern2 = /[a-z]/;
        var pattern3 = /[~!@\#$%<>^&*]/;     // 원하는 특수문자 추가 제거
        var pw_msg = "";
        document.getElementById("dd").style.color='red'
        if(id.length == 0) {
               document.getElementById("dd").innerHTML='아이디를'
               return false;
         } 
        if(pw.length == 0) {
               document.getElementById("dd").innerHTML='비밀번호를'
               return false;
         } else {
                if( pw  !=  pw2) {
                      document.getElementById("dd").innerHTML='비밀번호가 일치하지 않습니다.'
                      return false;
                 }
         }
       if(!pattern1.test(pw)||!pattern2.test(pw)||!pattern3.test(pw)||pw.length<8||pw.length>12){
            document.getElementById("dd").innerHTML='영문+숫자 8자리 이상으로 구성하여야 합니다.'
            return false;
        }
       document.getElementById("dd").style.color='green'
       document.getElementById("dd").innerHTML='합격'
    }
</script>
<meta charset="UTF-8">
<title> title </title>
</head>
<body>
   아이디 :  <input type="text" id="Id" /><br/>
   비밀번호 : <input type="password" id="pass1" onkeyup="check()"/><br/>
   비밀번호확인 : <input type="password" id="pass2" onkeyup="check()" /><br/>
   <label id="dd"></label><br/>
   <input type="button" onclick="check()" value="확인">   
</body>
</html>
