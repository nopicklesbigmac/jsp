<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% request.setCharacterEncoding("UTF-8");%>
     <h2>계산결과</h2>
<%
	int num =Integer.parseInt(request.getParameter("num"));
	int sum=0;
	if (num<0)
		out.print("음수 ㄴㄴ");
	else
		for(int i = 1 ; i<=num;i++) {
			sum+=i;
			
			if(i==num)
				out.print(i+" = "+sum);
			else
				out.print(i+" + " );
		}
		out.print("<br>" );
%>
