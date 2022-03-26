<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>유저 페이지</title>
</head>

<body>

	<h1>유저 페이지 입니다.</h1>

	<p>
		principal:
		<sec:authentication property="principal" />
	</p>
	<p>
		아이디:
		<sec:authentication property="principal.user.id" />
	</p>
	<p>
		비밀번호:
		<sec:authentication property="principal.user.password" />
	</p>
	<p>
		이름:
		<sec:authentication property="principal.user.name" />
	</p>
	<p>
		전화:
		<sec:authentication property="principal.user.phonenum" />
	</p>
	<p>
		주소:
		<sec:authentication property="principal.user.address" />
	</p>
	<p>
		<a href="<c:url value="/" />">홈</a>
	</p>

	<sec:authorize access="isAnonymous()">
		<p>
			<a href="<c:url value="/login/loginForm" />">로그인</a>
		</p>
	</sec:authorize>

	<sec:authorize access="isAuthenticated()">
		<form:form action="${pageContext.request.contextPath}/logout"
			method="POST">
			<input type="submit" value="로그아웃" />
		</form:form>
	</sec:authorize>




	<p>
		<a href="mypage?id=<sec:authentication property="principal.user.id" />">마이페이지</a>
	</p>




</body>
</html>