<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
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
	String n = request.getParameter("num");
	if(n == null || n == ""){
		response.sendRedirect("list.jsp");
		return;
	}
	int num = 0;
	try{
		num = Integer.parseInt(n);
	}catch(Exception e){
		response.sendRedirect("list.jsp");
		return;
	}
	
	String id = (String)session.getAttribute("id");
 	if(id == null || id == ""){
		response.sendRedirect("/care/member/login.jsp");
		return;
	}

	String saveFolder = "C:\\javas\\upload\\" + id;
	
	int maxSize = 1024 * 1024 * 10; // 10MB
	MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "utf-8", new DefaultFileRenamePolicy());
	
	String subject = multi.getParameter("subject");
	String content = multi.getParameter("content");
	String upfile = multi.getFilesystemName("upfile");
	/*
		파일명 중복 시 
		getOriginalFileName : MemberDAO.java
		getFilesystemName : MemberDAO1.java
	*/
	out.print("getOriginalFileName : " + multi.getOriginalFileName("upfile") + "<br>"); 
	out.print("getFilesystemName : " + multi.getFilesystemName("upfile") + "<br>"); 

	if(subject == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back(); </script>");
		return ;
	}
	
	CenterDAO centerDao = new CenterDAO();
	CenterDTO center = centerDao.selectNum(num);
	
	center.setSubject(subject);
	center.setContent(content);
	center.setNum(num); 
	
	if(upfile != null){
		saveFolder = saveFolder + "\\" + center.getFileName();
		center.setFileName(upfile);
		File file = new File(saveFolder);
		if(file.exists()){
			file.delete();
		}
	}
	centerDao.modify(center); 
%>
<script>alert('게시글 수정 완료'); location.href='list.jsp';</script>











