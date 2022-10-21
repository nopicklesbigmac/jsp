<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <h3>사이트에 방문해주셔서 감사합니다.</h3>
<%

	Cookie[] cookies = request.getCookies();
	boolean check = true;
	if(cookies != null){
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("popupCookie")){
				check = false;
			}
		}
	}
	if(check){
%>	
		<script>
			window.open('ex3_popup.jsp', '', 'width=450, height=300, top=300, left=300');
		</script>
<%  } %>


