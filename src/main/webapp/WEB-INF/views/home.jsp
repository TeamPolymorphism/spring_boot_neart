<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>neart 메롱 홈이다.</h1>

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
	
<%-- 	<c:choose>
		<c:when test="${empty principal}">
			<a href="<c:url value="/login/loginProc"/>">로그인</a>
		</c:when>
		<c:otherwise>
			<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
				<input type="submit" value="로그아웃" />
			</form:form>
		</c:otherwise>
	</c:choose> --%>
	<h3>

		[<a href="<c:url value="/add/addForm" />">회원가입</a>] [<a
			href="<c:url value="/add/addFormAdmin" />">관리자 회원가입</a>] [<a
			href="<c:url value="/user/userHome" />">유저 홈</a>] [<a
			href="<c:url value="/admin/adminHome" />">관리자 홈</a>] [<a
			href="<c:url value="/oauth2/authorization/kakao" />">카카오로그인</a>] [<a
			href="<c:url value="/oauth2/authorization/naver" />">네이버로그인</a>] <span><a
			href="/product/listProduct">[상품]</a></span> <span><a
			href="/board/list">[공지사항 게시판]</a></span> <span><a
			href="/qnaboard/list">[Q&A 게시판]</a></span>
			<a href="<c:url value="/cart/list/${principal.user.membernum}"/>">[장바구니]</a>
			


	</h3>
</body>
</html>
