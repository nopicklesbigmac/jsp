<%@page import="java.io.File"%>
<%@page import="center.CenterDTO"%>
<%@page import="center.CenterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String n = request.getParameter("num");

	int num = Integer.parseInt(n);
	CenterDAO centerDao = new CenterDAO();
	CenterDTO center = centerDao.selectNum(num);
	
	String id = (String)session.getAttribute("id");
	if(id == null || id == ""){
		response.sendRedirect("/care_jsp/member/login.jsp");
		return;
	}
	
	if(id.equals(center.getId()) == false){
		response.sendRedirect("list.jsp");
		return;
	}
	
	String fileName = center.getFileName();
	String saveFolder ="C:\\javas\\upload\\" + id + "\\" + fileName;
	File file = new File(saveFolder);
	if(file.exists())
		file.delete();
	
	centerDao.delete(num);
%>
<script>alert('게시글 삭제되었습니다.');location.href='list.jsp';</script>












