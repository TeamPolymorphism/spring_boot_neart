<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Detail</title>
	<meta charset="UTF-8">

  
<script type="text/javascript">
	function deleteProduct() {
		if (confirm("정말 삭제하시겠습니까?") == true) { //확인
			document.form.submit(); //유효성 검사
		} else { //취소
			return false;

		}

	};
</script>
</head>
<body>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		
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
		<!-- 작품사진 join 사용 -->
		<tr>
			<td>작품사진</td>
			<td></td>
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
			<td colspan="2"><a href="listProduct">목록보기</a> &nbsp;&nbsp; <a
				href="deleteProduct?productid=${detailProduct.productid}"
				Onclick="return deleteProduct();">삭제</a> &nbsp;&nbsp; <a
				href="modifyProduct?productid=${detailProduct.productid}">수정하기</a> &nbsp;&nbsp;
				</td>
		</tr>
	</table>
	<form action="/cart" method="post">
	<input type="hidden" name="productid" value="${detailProduct.productid}">
	<input type="hidden" name="cartquantity" value="0">
	<input type="hidden" name="price" value="${detailProduct.price}">
	<input type="hidden" name="totalprice" value="${detailProduct.price}">
	<input type="hidden" name="productname" value="${detailProduct.productname}">
	<input type="hidden" name="membernum" value=<sec:authentication property="principal.user.membernum"/>>
	<input type="submit" value="장바구니">
</form>
</body>
</html>