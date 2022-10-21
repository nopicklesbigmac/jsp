<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% request.setCharacterEncoding("UTF-8");%>
<%
	String nm = request.getParameter("name");
	double cm =Double.parseDouble(request.getParameter("cm"));
	double kg =Double.parseDouble(request.getParameter("kg"));
	double avrkg = (cm -100) * 0.9;
	double bmi = kg / avrkg * 100;
	String biman=""; 
	if (bmi>=130)
		biman="고도비만";
	else if (bmi>=120)
		biman="비만";
	else if (bmi>=110)
		biman="과체중";
	else if (bmi>=100)
		biman="정상";
	else if (bmi<100)
		biman="저체중";
	 PrintWriter pw = response.getWriter();
	 pw.printf("%s님의 비만도는 %.2f%s로 %s입니다.", nm,bmi,"%",biman);
%>
