<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 | 작품수정</title>

</head>
<body>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<!-- "작품수정"을 누르면 /"modifyProductFinish" 실행 -->
		<form action="modifyProductFinish" method="post">
			<input type="hidden" name="productid"
				value="${modifyProduct.productid}">
		<tr>
			<td>조회수</td>
			<td>${modifyProduct.producthit}</td>
		</tr>
		<tr>
			<td>작품번호</td>
			<td>${modifyProduct.productid}</td>
		</tr>
		<tr>
			<td>작품명</td>
			<td><input type="text" name="productname"
				value="${modifyProduct.productname}"></td>
		</tr>
		<tr>
			<td>작가</td>
			<td><input type="text" name="artist"
				value="${modifyProduct.artist}"></td>
		</tr>

		<tr>
			<td>작품사진</td>
			<td><label for="img">파일 업로드</label>
			<img src="<c:url value="${insertProduct.filePath}"/>" />
			<input type="file" name="file"></td>
			<td><img src="${modifyProduct.filePath}"></td>
		<tr>
			<td>작품설명</td>
			<td><input type="text" name="productcontent"
				value="${modifyProduct.productcontent}"></td>
		</tr>
		<tr>
			<td>사이즈</td>
			<td><input type="text" name="productsize"
				value="${modifyProduct.productsize}"></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><input id="price" type="number" name="price" size="50"
				value="${modifyProduct.price}"></td>
		</tr>
		<tr>
			<td>재고</td>
			<td><input id="quantity" type="number" name="quantity" size="50"
				value="${modifyProduct.quantity}"></td>
		</tr>

		<tr>
			<td colspan="2"><a href="listProduct">목록으로</a> &nbsp;&nbsp; 
			<input type="submit" value="수정완료"></td>
		</tr>

		</form>
	</table>

</body>
</html>