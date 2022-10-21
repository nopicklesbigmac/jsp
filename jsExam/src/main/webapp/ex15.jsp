<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex13</title>
  <script>
      function display(){
    	 nameObj = document.getElementById('name');
    	 data = nameObj.value;
    	  
    	 document.getElementById('msg1').innerHTML=data
    	 document.getElementById('msg2').innerHTML=data
      }
  
   </script>
</head>
<body>
 	name : <input type="text" id="name" placeholder="입력"><input type="button" value="버튼" onClick="display()"><br>
 	<h3 id = msg1>여기에 입력값을 축력</h3>
 	<label id="msg2">나도 여기에 출력해줘.</label>
 	
 	
</body>
</html>