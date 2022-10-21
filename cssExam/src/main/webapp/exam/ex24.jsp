<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex24</title>
<style>
     td, th { border: 1px solid black; }
     #tb1 {
		border: 1px solid blue;	
		width: 300px;
		empty-cells: hide;
     }	
     #tb2  {
     	caption-side: bottom;
     	width: 300px;
		border: 1px solid red;	
     }
     #tb2 caption{font-size:12px;}
</style>
</head>
<body>
    <table id="tb1">
    	<caption>대한민국 대학</caption>
        <tr>
            <th>학교</th> <th>이름</th> <th>국가</th>
        </tr>
        <tr>
            <td>한국대</td> <td>한국인</td> <td>대한민국</td>
        </tr>
        <tr>
            <td>대한대</td> <td>대한인</td> <td></td>
        </tr>
    </table>
    <br><br>
    
    <table id="tb2">
    	<caption>&lt;미국 대학&gt;</caption>
        <tr>
            <th>University</th> <th>Name</th> <th>Country</th>
        </tr>
        <tr>
            <td>MIT</td> <td>Jack</td> <td>USA</td>
        </tr>
        <tr>
            <td>UCLA</td> <td>Smith</td> <td>USA</td>
        </tr>
    </table>
</body>
</html>