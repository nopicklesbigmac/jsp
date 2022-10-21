<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex13</title>
  <script>
      function display(){
    	 ok = "images/ok.png"
    	 document.getElementById('image').src = ok;
      }
   </script>
</head>
<body>
 	<img id ="image" onclick="display()" src ="images/delete.png"/>
</body>
</html>