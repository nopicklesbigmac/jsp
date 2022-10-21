<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:requestEncoding value="utf-8" />    

	<jsp:useBean id="memberDao" class="jstl.MemberDAO"/>
	<jsp:useBean id="member" class="jstl.MemberDTO"/>
	<jsp:setProperty property="*" name="member"/>
	
<c:choose>
	<c:when test="${empty member.id || empty member.pwd1 || empty member.name}">
		<script>alert('필수 정보입니다.'); history.back();</script>
	</c:when>
	<c:when test="${ member.pwd1 !=  member.pwd2 }">
		<script>alert('두 패스워드가 일치하지 않습니다.'); history.back();</script>"
	</c:when>
	<c:otherwise>
		<c:set var="check" value="${memberDao.selectId(member.id)}" />
		<c:choose>
			<c:when test="${ empty check}">
				${ memberDao.insert(member) }
				<script>alert('회원 가입 완료'); location.href='index.jsp';</script>
			</c:when>
			<c:otherwise>
				<script>alert('회원 가입 실패'); history.back();</script>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>	

