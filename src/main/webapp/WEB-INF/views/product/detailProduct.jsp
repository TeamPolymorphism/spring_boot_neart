<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 | 작품상세</title>

</head>
<body>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<input type="hidden" name="productid" value="${detailProduct.productid}">
		<tr>
			<td>조회수</td>
			<td>${detailProduct.producthit}</td>
		</tr>
		<tr>
			<td>작품번호</td>
			<td>${detailProduct.productid}</td>
		</tr>
		<tr>
			<td>작품명</td>
			<td>${detailProduct.productname}</td>
		</tr>
		<tr>
			<td>작가</td>
			<td>${detailProduct.artist}</td>
		</tr>
		<tr>
			<td>작품사진</td>
			<td><img src="${detailProduct.filePath}"></td>
		</tr>
		<tr>
			<td>작품설명</td>
			<td>${detailProduct.productcontent}</td>
		</tr>
		<tr>
			<td>사이즈</td>
			<td>${detailProduct.productsize}</td>
		</tr>
		<tr>
			<td>재고</td>
			<td>${detailProduct.stock}</td>
		</tr>
		<tr>
			<td>가격</td>
			<td>${detailProduct.price}</td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="listProduct">목록보기</a> &nbsp;&nbsp; 
				<a href="deleteProduct?productid=${detailProduct.productid}">삭제</a> &nbsp;&nbsp; 
				<a href="modifyProduct?productid=${detailProduct.productid}">수정하기</a>
			</td>
		</tr>
	</table>
</body>
</html>