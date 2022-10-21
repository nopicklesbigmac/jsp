<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="center.CenterDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="center.CenterDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("id");
/* 	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	String upfile = request.getParameter("upfile");
	
	out.print("subject : " + subject + "<br>");
	out.print("content : " + content+ "<br>");
	out.print("upfile : " + upfile+ "<br>"); */
	
	String saveFolder = "C:\\javas\\upload\\" + id;
	File file = new File(saveFolder);
	if(file.exists() == false)
		file.mkdirs();
	
	int maxSize = 1024 * 1024 * 10; // 10MB
	MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "utf-8");
	
	String subject = multi.getParameter("subject");
	String content = multi.getParameter("content");
	String upfile = multi.getOriginalFileName("upfile");
	
	out.print("subject : " + subject + "<br>");
	out.print("content : " + content+ "<br>");
	out.print("upfile : " + upfile+ "<br>");
	
 	if(id == null || id == ""){
		response.sendRedirect("/care_jsp/member/login.jsp");
		return;
	}

	if(subject == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back(); </script>");
		return ;
	}
	
	CenterDTO center = new CenterDTO();
	center.setSubject(subject);
	center.setContent(content);
	center.setId(id);
	center.setHit(0);
	
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	center.setWriteTime(sdf.format(date));
	center.setFileName(upfile);
	
	CenterDAO centerDao = new CenterDAO();
	centerDao.write(center); 
%>
<script>alert('게시글 작성 완료'); location.href='list.jsp';</script>