<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex19</title>
   <script>
      function pwchk() {
         inPut = document.getElementById("inPut").value;
         document.getElementById("outPut").value=inPut;
         document.getElementById("inPut").value = "";
      }
   </script>
</head>
<body>
   <hr>
      <input type="text" id="inPut" onchange="pwchk()"><br>
      <input type="text" id='outPut'><br>
</body>
</html>