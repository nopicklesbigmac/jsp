<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 1</title>
</head>
<body>
   <p>안녕</p>
   <%
      String data1 = "include1_data1";
   %>
   <c:set var="data2" value="include1_data2" />
</body>
</html>