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
	
	<form:form action="${pageContext.request.contextPath}/update" method="post">
	
			아이디 <input type="text" name="id" value="${update_view.id}"></br>
			
			이름 <input type="text" name="name" value="${update_view.name}"></br>

			생년 <input type="text" name="year" value="${update_view.year}"></br>

			월 <input type="text" name="month" value="${update_view.month}"></br>

			일 <input type="text" name="day" value="${update_view.day}"></br>

			주소 <input type="text" name="address" value="${update_view.address}"></br>

			전화번호 <input type="text" name="phonenum" value="${update_view.phonenum}"></br>
	
			<td colspan="2"><input type="submit" value="수정" ></td>
			<%-- <a href="update?id=${update_view.id}">업데이트</a>
			<a href="delete?id=${update_view.id}">삭제</a> --%>	
		</tr>
	</form:form>

	<p>
		<a
			href="mypage?id=<sec:authentication property="principal.mvo.id" />">마이페이지</a>
	</p>
	<p>
		<a
			href="delete?id=<sec:authentication property="principal.mvo.id" />">회원탈퇴</a>
	</p>

</body>
</html>