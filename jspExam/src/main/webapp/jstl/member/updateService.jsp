<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:requestEncoding value="utf-8" />    

<jsp:useBean id="memberDao" class="jstl.MemberDAO" />
<jsp:useBean id="member" class="jstl.MemberDTO" />
<jsp:setProperty property="*" name="member"/>

<c:choose>
	<c:when test="${empty sessionScope.id }">
		<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>
	</c:when>
	<c:when test="${empty member.pwd1 || empty member.name }">
		<script>alert(' 필수 항목이다.'); location.href='update.jsp';</script>
	</c:when>
	<c:when test="${member.pwd1 != member.pwd2 }">
		<c:redirect url="update.jsp"/>
	</c:when>
	<c:otherwise>
		<c:set var="check" value="${memberDao.selectId(sessionScope.id) }"/>
		<c:choose>
			<c:when test="${empty check }">
				<script>alert('회원 가입 후 이용하세요.'); location.href='register.jsp';</script>
			</c:when>
			<c:otherwise>
				<!-- ${member.setId(sessionScope.id) }  -->
				<c:set target="${member }" property="id" value="${sessionScope.id }"/>
				${memberDao.update(member) }
				<script>alert('회원 수정 완료'); location.href='logout.jsp';</script>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>





