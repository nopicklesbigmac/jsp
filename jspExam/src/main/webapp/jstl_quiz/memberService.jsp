
<%@page import="jstl_quiz.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8" />
 
<jsp:useBean id="memberVo" class="jstl_quiz.MemberVO" />
<jsp:setProperty property="*" name="memberVo" />
<c:choose>
	<c:when test="${empty memberVo.id || empty memberVo.pw || empty memberVo.name }">
		<script>alert('서버에서 검증한 결과 필수 항목이다.'); location.href='member.jsp';</script>
	</c:when>
	<c:when test="${memberVo.pw != memberVo.confirmPw }">
		<c:redirect url="member.jsp"/>
	</c:when>
	<c:otherwise>
		<% 
			MemberDAO memberDao = new MemberDAO();
			pageContext.setAttribute("memberDao", memberDao);
		%>
		<c:set var="check" value="${memberDao.selectId(memberVo.id) }" />
		<c:choose>
			<c:when test="${not empty check }" >
				<script>alert('중복 아이디'); location.href='member.jsp';</script>
			</c:when>
			<c:otherwise>
				${memberDao.insert(memberVo) }
				<script>alert('회원 가입 완료'); location.href='index.jsp';</script>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>






