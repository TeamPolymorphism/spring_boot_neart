<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html lang="kor">
<head>
<title>회원탈퇴 팝업</title>

	<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

	<script language="javascript">
	function moveClose() {
	  opener.location.href="/logout";
	  self.close();
	}
	</script>
</head>
<body onload="window.resizeTo(370,300)" style="padding:20px;">
	<h5>정말 회원을 탈퇴하시겠습니까?</h5>
	<div style="padding:20px;">
		<input type="button" class="btn btn-warning" value="회원 탈퇴 취소" onclick="self.close();" />
		<a href="${pageContext.request.contextPath}/userdelete?id=<sec:authentication property="principal.user.id" />"
	    value="move to close" onclick="moveClose();" type="button" class="btn btn-danger" style="color: black">회원탈퇴</a>
    </div>
</body>
</html>