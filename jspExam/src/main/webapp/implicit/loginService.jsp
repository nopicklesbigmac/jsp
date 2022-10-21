<%@page import="actionTag.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
   
%>
   <jsp:useBean id="member" class="actionTag.MemberDTO"/>
   	<jsp:setProperty property="*" name="member"/>
    <jsp:useBean id="memberDao" class="actionTag.MemberDAO" />
<% 
   
   if(member.getId() == "" || member.getPwd1() == ""){
      out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
      return ;
   }

   
   MemberDTO checkID = memberDao.selectId(member.getId());
   if(checkID != null && checkID.getPwd1().equals(member.getPwd1())){
      session.setAttribute("id", member.getId());
      session.setAttribute("name", checkID.getName());
      session.setAttribute("addr", checkID.getAddr());
      session.setAttribute("tel", checkID.getTel());
      out.print("<script>alert('성공'); location.href='index.jsp';</script>");
   }else{
      out.print("<script>alert('실패'); history.back();</script>");
   }
%>