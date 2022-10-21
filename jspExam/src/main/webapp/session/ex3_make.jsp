<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	Cookie cookie = new Cookie("popupCookie", "popupValue");
	cookie.setMaxAge(30);
	response.addCookie(cookie);
%>

<script>window.close();</script>