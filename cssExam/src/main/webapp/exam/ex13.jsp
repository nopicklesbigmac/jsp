<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex13</title>
<style>
   p{
      background-color: aqua;
      color: red;
   }
   p.c1{
      width: 300px; 
      height: 80px; 
      color: green;
   }
   p.c2{
      width: 50%; 
      height: 50%; 
      color: purple;
   }
   p.c1{
      width: 10cm; 
      height: 3cm; 
      color: blue;
   }
   div{
      width: 50%;
      background-color: red;
   }
</style>
</head>
<body style="background-color: lightyellow;">
   <p>박스 모델의 내용 영역 크기 지정</p>
   <p class="c1">(1)c1:박스 모델의 크기를 픽셀(px) 단위로 지정</p>
   <p class="c2">(2)c2:박스 모델의 크기를 퍼센트(%) 단위로 지정</p>
   <p class="c3">(3)c3:박스 모델의 크기를 센티미터(cm) 단위로 지정</p>
   
   <div>
      <p class="c2">(2) c2:박스 모델의 크기를 퍼센트(%) 단위로 지정</p>
   </div>
</body>
</html>