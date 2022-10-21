<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:requestEncoding value="utf-8" />

<jsp:useBean id="memberDao" class="jstl.MemberDAO" />
<jsp:useBean id="member" class="jstl.MemberDTO" />
<jsp:setProperty property="*" name="member"/>

<c:choose>
	<c:when test="${empty member.id || empty member.pwd1 }">
		<script>alert('로그인 서비스에서 검증하고 있는 필수 정보입니다.'); history.back();</script>"
	</c:when>
	<c:otherwise>
		<c:set var="check" value="${memberDao.selectId(member.id)}" />
		<c:choose>
			<c:when test="${ !(empty check) && check.pwd1 == member.pwd1 }">
				<c:set var="id" value="${member.id}" scope="session" />
				<c:set var="name" value="${check.name}" scope="session" />
				<c:set var="addr" value="${check.addr}" scope="session" />
				<c:set var="tel" value="${check.tel}" scope="session" />
				<script>alert('로그인 성공'); location.href='index.jsp';</script>
			</c:when>
			<c:otherwise>
				<script>alert('로그인 실패'); history.back();</script>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>

