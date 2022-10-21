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
     	var tmp="check";
    	var age = 18;
  		if (tmp=="check") {
  			if (age==19){
  				result = "간당간당 합니다.";
  			}else if (age >19){
  				result ="성인입니다.";
  			}else {
  				result = "미성년자 입니다.";
  			}
  		}
     	document.write("당신은 "+result+"<br>");
   </script>
</body>
</html>