<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>마이페이지</title>
</head>

<body>
	<h1>마이 페이지 입니다.</h1>
	<!--  form에 get이 있었음 그거를 받으면 update가 get과 post를 동시에 받지 못 함 -->
	<form>
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
			생년:
			<sec:authentication property="principal.user.year" />
		</p>
		<p>
			월:
			<sec:authentication property="principal.user.month" />
		</p>
		<p>
			일:
			<sec:authentication property="principal.user.day" />
		</p>
		<p>
			전화:
			<sec:authentication property="principal.user.phonenum" />
		</p>
		<p>
			주소:
			<sec:authentication property="principal.user.address" />
		</p>
	</form>
		<p>
			<a href="<c:url value="/" />">홈</a>
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/update?id=<sec:authentication property="principal.user.id" />">회원정보수정</a>
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/orderdetails?membernum=<sec:authentication property="principal.user.membernum" />">주문내역조회</a>
		</p>


</body>
</html>