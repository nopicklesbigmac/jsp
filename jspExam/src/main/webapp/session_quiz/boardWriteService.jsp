<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="session_quiz.BoardDTO"%>
<%@page import="session_quiz.BoardDAO"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
	if(id == null || id == ""){
		out.print("<script> alert('로그인 후 이용해주세요'); location.href='login.jsp'; </script>");
		return;
	}
	String saveFolder = "C:\\javas\\upload\\"+id;
	File file = new File(saveFolder);
	if(file.exists() == false)
		file.mkdirs(); 
	
	int maxSize =  1024 * 1024 * 10;
	MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "utf-8");
	String title = multi.getParameter("title");
	String content = multi.getParameter("content");
	String upload = multi.getOriginalFileName("upload");
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	BoardDAO boardDao =BoardDAO.getInstance();
	BoardDTO dto = new BoardDTO();
	
	dto.setId(id);
	dto.setTitle(title);
	dto.setContent(content);
	dto.setFileName(upload);
	dto.setWriteTime(sdf.format(date));
	
	boardDao.write(dto); 
	
	out.print("<script> alert('글이 성공적으로 등록되었습니다'); location.href='boardForm.jsp'; </script>");
%>