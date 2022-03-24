<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>회원정보수정 페이지</title>
</head>

<body>
	
	<form:form action="delete" method="post">
	
			아이디 <input type="text" name="id" value="${remove_view.id}"></br>
	
			<td colspan="2"><input type="submit" value="삭제" ></td>
		</tr>
	</form:form>

			<p>
		<a href="mypage?id=<sec:authentication property="principal.mvo.id" />">마이페이지로 가기</a>
	</p>
	

</body>
</html>