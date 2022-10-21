<%@page import="java.io.OutputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String fileName = request.getParameter("fileName");
	String writeId = request.getParameter("writeId");
	
	if(writeId == null || writeId == "" || fileName == null || fileName == ""){
		response.sendRedirect("list.jsp");
		return;
	}

	String saveFolder = "C:\\javas\\upload\\" + writeId + "\\" + fileName;
	File file = new File(saveFolder);
	
	FileInputStream iStream = new FileInputStream(file);
	
	response.setContentType("application/octet-stream");
	response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
	
	out.clear();
	out = pageContext.pushBody();
	OutputStream oStream = response.getOutputStream();
	
	byte[] b = new byte[1024];
	while(true){
		int currentDataSize = iStream.read(b, 0, b.length); // 서버에 위치한 파일읽기
		if(currentDataSize == -1)
			break;
		
		oStream.write(b, 0, currentDataSize); // 배열에 담긴 데이터 클라이언트에게 송신하기.
	}
	
	iStream.close();
%>










