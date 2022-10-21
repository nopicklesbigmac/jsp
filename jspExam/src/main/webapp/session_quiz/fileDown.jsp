<%@page import="java.io.OutputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
       String fileName = request.getParameter("fileName");
       String writeId = request.getParameter("writeId");
       
       
       if(writeId == null || writeId ==""|| fileName == null || fileName ==""){
          response.sendRedirect("boardForm.jsp");
          return;
       }
          
       
       String saveFolder = "C:\\javas\\upload\\" + writeId + "\\" + fileName;
       File file = new File(saveFolder);
       FileInputStream iStream = new FileInputStream(file);
       
       response.setContentType("application/octet-steam");
       response.setHeader("Content-Disposition","attachment;filename=" + URLEncoder.encode(fileName, "utf-8"));
       
       out.clear();
       out = pageContext.pushBody();
       OutputStream oStream = response.getOutputStream();
       
       
       byte[] b = new byte[1024];
       while(true){
          int currentDatasize = iStream.read(b, 0, b.length); // 서버에 위치한 파일읽기
          if(currentDatasize == -1)
             break;
          
          oStream.write(b , 0,currentDatasize); // 배열에 담긴 데이터 클라이언트에게 송신하기.
       }
       
       iStream.close();
    %>
    