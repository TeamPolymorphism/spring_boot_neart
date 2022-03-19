<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>작품 페이지</title>
</head>
<body>
	<a href="/">Home</a>
	<h1>장바구니</h1>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
		<td>정가</td>
			<td>상품명</td>
			<td>상품수량</td>
			<td>가격</td>
		</tr>
		
		<c:forEach items="${cartList}" var="cart">
      <tr>
      	 <td>${cart.price}</td>
         <td>${cart.productname}</td>
         <td>${cart.cartquantity}</td>
         <td>${cart.totalprice}원</td>
      </tr>
      </c:forEach>
	</table>


</body>
</html>