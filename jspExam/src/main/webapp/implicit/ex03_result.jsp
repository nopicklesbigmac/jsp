<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <% request.setCharacterEncoding("UTF-8");%>
이름 : <%= request.getParameter("name")%><br>
주소 : <%= request.getParameter("address")%><br>

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
취미 : <%=Arrays.toString(likes)%>
