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

	
	<form:form action="${pageContext.request.contextPath}/orderdetails" method="get">
		<tr id="membernum" name="membernum" value="${orderdetails_view.membernum}"><tr>
		<tr id="orderdate" name="orderdate" value="${orderdetails_view.orderdate}"><tr>
		<tr id="ordersid" name="ordersid" value="${orderdetails_view.ordersid}"><tr>
		<tr id="productname" name="productname" value="${orderdetails_view.productname}"><tr>
		<tr id="totalquantity" name="totalquantity" value="${orderdetails_view.totalquantity}"><tr>
		<tr id="price" name="price" value="${orderdetails_view.price}"><tr>
		
	</form:form>


</body>
</html>