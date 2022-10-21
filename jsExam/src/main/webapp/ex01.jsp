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
      var num;
      var obj = null;
      document.write('100(숫자) : ' + typeof 100 + "<br>");
      document.write('10.5(숫자) : ' + typeof 10.5 + "<br>");
      document.write('"홍길동"(문자) : ' + typeof "홍길동" + "<br>");
      document.write('true(논리형) : ' + typeof true + "<br>");
      document.write('[1,2,3](객체) : ' + typeof [1,2,3] + "<br>");
      document.write('{name:"홍길동"}(숫자) : ' + typeof {name:'홍길동', age:25} + "<br>");
      document.write('num(정의 되지 않았음) : ' + typeof num + "<br>");
      document.write('obj=null(객체) : ' + typeof obj + "<br>");
      
      <!-- 콘솔 창에 출력이 안된다. f12눌러서 콘솔에 뜬다. -->
      //클라이언트 (웹브라우저)  개발자 도구 (f12)콘솔 탭 에서 확인가능 
      console.log('hello')
   </script>
</body>
</html>