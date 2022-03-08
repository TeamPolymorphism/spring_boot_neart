<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>작품상세</title>
</head>
<body>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="modify" method="post">
			<input type="hidden" name="productid"
				value="${productDetail.productid}">
			<tr>
				<td>작품번호</td>
				<td>${productDetail.productid}</td>
			</tr>
			<tr>
				<td>작품명</td>
				<td>${productDetail.productname}</td>
			</tr>
			<tr>
				<td>작가</td>
				<td><input type="text" name="artist"
					value="${productDetail.artist}"></td>
			</tr>
			<tr>
				<td>사이즈</td>
				<td><input type="text" name="productsize"
					value="${productDetail.productsize}"></td>
			</tr>

			<tr>
				<td>가격</td>
				<td><textarea rows="10" name="price">${productDetail.price}</textarea></td>
			</tr>
	
		</form>
	</table>
</body>
</html>