<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
   <script>
   function check() {
      id = document.getElementById('id');
      id = document.getElementById('pw');
      confrimPw = document.getElementById('confirmPw');
      if(id.value == "" || pw.value == ""|| document.getElementById('name').value == ""){
         alert("필수 항목입니다.");
         return;
      }
      if(pw.value != confirmPw.value){
         alert("두 비밀번호가 일치하지 않습니다.");
         return;
      }
      document.getElementById('f').submit();
   }
   </script>
</head>
<body>
<form action = "memberService.jsp" method = "post" id ="f">
   <input type="text" placeholder="아이디" name = "id" id = "id"><br>
   <input type="password" placeholder="비밀번호" name = "pw" id = "pw"><br>
   <input type="password" placeholder="비밀번호 확인" name = "confirmPw" id = "confirmPw"><br>
   <input type="text" placeholder="이름" name ="name" id = "name"><br>
   <input type="text" placeholder="이메일" name = "email" id="email"><br>
   <input type="submit" value = "회원 가입" onclick = "check();">
   <input type="reset" value = "취소" onclick = "location.href='index.jsp'">
</form>

</body>
</html>