<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>작품 페이지</title>
</head>
<body>
	<span><a href="/">Home</a></span>
	<h1>상품 목록입니다.</h1>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>작품번호</td>
			<td>작품</td>
			<td>작품명</td>
			<td>작가</td>
			<td>사이즈</td>
			<td>가격</td>
			<td>재고</td>
			<td>등록날짜</td>
			<td>조회수</td>

		</tr>
		<c:forEach items="${productBoard}" var="product">
			<tr>
				<td>${product.productid}</td>
				<td><img src="${product.filePath}"></td>
				<td><a href="detailProduct?productid=${product.productid}">${product.productname}</a></td>
				<td>${product.artist}</td>
				<td>${product.productsize}</td>
				<td>${product.price}</td>
				<td>${product.stock}</td>
				<td>${product.productdate}</td>
				<td>${product.producthit}</td>
			</tr>
		</c:forEach>

		<tr>
			<td colspan="5"><a href="insertProduct">작품등록</a></td>
		</tr>
	</table>


	<!-- 페이징-->
	<c:if test="${pageMaker.pre}">
		<a href="listProduct${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
	</c:if>

	<!-- 1-10페이지까지 페이지를 만들어주는것  -->
	<c:forEach var="idx" begin="${pageMaker.startPage }"
		end="${pageMaker.endPage }">
		<a href="listProduct${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a href="listProduct${pageMaker.makeQuery(pageMaker.endPage +1) }">
			» </a>
	</c:if>
	<br>

</body>
</html>