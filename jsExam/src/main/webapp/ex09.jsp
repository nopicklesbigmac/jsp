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
     	var x, y;
    	for (x=2;x<=5;x++){
    		document.write("<b>----[" +x+"단 ]---</b>" + "<br>");
    		for (y= 1; y<=9; y++){
    			document.write(x+"*"+y+"="+(x*y)+"<br>");
    		}
    	}
   </script>
</body>
</html>