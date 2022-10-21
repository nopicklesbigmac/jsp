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
    	  
    	 document.getElementById('name').value=""
    	 document.getElementById('name2').value=data
      }
  
   </script>
</head>
<body>
 	name :
 	<input type="text" id="name">
 	<br> name2 :
 	<input type="text" id="name2">
 	<br>
 	<input type="button" value="버튼" onClick="display()">
 	
</body>
</html>