<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>설문조사 결과</h2>
     <% request.setCharacterEncoding("UTF-8");%>
이름 : <%= request.getParameter("name")%><br>
소개 : <%= request.getParameter("content")%><br>
나이 : <%= request.getParameter("age")%><br>

취미 :
<%
	String likes[] = request.getParameterValues("like");
	int i = likes.length;
	int j = 0; 
	for(String like: likes) {
		if (j==0 ||j==i){
		}else{
			out.print(",");
		}
		j++;
		out.print(like+" " );
	}
	out.print("<br>" );
%>
