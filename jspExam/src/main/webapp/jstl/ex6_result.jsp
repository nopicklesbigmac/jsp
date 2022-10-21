<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="UTF-8"/>

    아이디 : ${param.id} <br>
    비밀번호 : ${param.pw} <br>
    비밀번호 확인 : ${param.confirmPw} <br>
    이름 : ${param.name} <br>
    이메일 : ${param.email} <br>