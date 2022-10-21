<%@page import="jstl.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:requestEncoding value="utf-8" />    

<% 
MemberDAO memberDao = new MemberDAO(); 
// out.print("스크립트릿 memberDao : " + memberDao + "<br>");
pageContext.setAttribute("memberDao", memberDao);
%>
<%-- <jsp:useBean id="memberDao" class="jstl.MemberDAO" /> --%>
<jsp:useBean id="member" class="jstl.MemberDTO" />
<jsp:setProperty property="*" name="member"/>

<c:choose>
	<c:when test="${empty sessionScope.id }">
		<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>
	</c:when>
	<c:when test="${empty member.pwd1 }">
		<script>alert(' 필수 항목이다.'); location.href='delete.jsp';</script>
	</c:when>
	<c:when test="${member.pwd1 != member.pwd2}">
		<c:redirect url="delete.jsp"/>
	</c:when>
	<c:otherwise>
		<%-- memberDao : ${pageScope.memberDao } --%>
		<c:set var="check" value="${memberDao.selectId(sessionScope.id) }"/>
		<c:choose>
			<c:when test="${check.pwd1 != member.pwd1 }">
				<script>alert('비밀번호가 일치하지 않습니다.'); location.href='delete.jsp';</script>
			</c:when>
			<c:otherwise>
				${member.setId(sessionScope.id) }
				${memberDao.delete(member) }
				<script>alert('회원 삭제 완료'); location.href='logout.jsp';</script>
			</c:otherwise>
		</c:choose> 
	</c:otherwise>
	
	
</c:choose>