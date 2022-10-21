<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8" />

<jsp:useBean id="memberVo" class="jstl_quiz.MemberVO" />
<jsp:setProperty property="*" name="memberVo" />
<c:choose>
	<c:when test="${empty sessionScope.id }">
		<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>
	</c:when>
	<c:when test="${ empty memberVo.pw }">
		<script>alert('서버에서 검증한 결과 필수 항목이다.'); location.href='delete.jsp';</script>
	</c:when>
	<c:when test="${memberVo.pw != memberVo.confirmPw }">
		<c:redirect url="delete.jsp"/>
	</c:when>
	<c:otherwise>
	<jsp:useBean id="memberDao" class="jstl_quiz.MemberDAO" />
		<c:set var="check" value="${memberDao.selectId(sessionScope.id) }" />
		<c:choose>
			<c:when test="${empty check }">
				<script>alert('회원 가입 후 이용하세요.'); location.href='member.jsp';</script>
			</c:when>
			<c:when test="${check.pw != memberVo.pw }">
				<script>alert('아이디 / 비밀번호를 확인하세요.'); location.href='delete.jsp';</script>
			</c:when>
			<c:otherwise>
				${memberVo.setId(sessionScope.id) }
				${memberDao.delete(memberVo) }
				 <c:remove var="id" scope="session" />
    			 <c:remove var="name" scope="session" />
    			 <c:remove var="email" scope="session" />
    			 <script>alert('회원 삭제 완료'); location.href='index.jsp';</script>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>
