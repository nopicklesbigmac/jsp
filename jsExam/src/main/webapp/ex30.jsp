<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex30</title>
   <script>
      var today = new Date();
      document.write(today.getFullYear() + "년 ")
      document.write(today.getMonth() + 1 + "월 ")
      document.write(today.getDate() + "일<br> ")
      document.write(today.getHours() + "시 ")
      document.write(today.getMinutes() + "분 ")
      document.write(today.getSeconds() + "초 ")
      document.write(today.ToLocaleTimeString());
   </script>
</head>
<body>
</body>
</html>