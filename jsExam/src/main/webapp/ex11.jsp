<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01</title>
</head>
<body>
   <script>
		var data1 =1234;
  		var data2 = "함수선언후 호출"
	   	printMsg(data1);
  		function printMsg(msg){
    		document.write("함수 호출 메세지 : "+msg+"<br>");
    		return "반환 데이터";
    	 	}
     	returnData =printMsg(data2);
     	document.write("반환 데이터  : "+returnData+"<br>");
   </script>
</body>
</html>