<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
   <table width="500" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<td>번호</td>
				<td>${content_view.bid}</td>
			</tr>
			
			<tr>
				<td>제목</td>
				<td>${content_view.btitle}</td>
			</tr>
			<tr>
				<td style="height:50px;">내용</td>
				<td>${content_view.bcontent}</td>
			</tr>
			<tr>
				<td colspan="2"> 
				<a href="/board/list">목록보기</a> &nbsp;&nbsp;
				<a href="/board/modify_view/${content_view.bid}">수정하기</a> &nbsp;&nbsp;  
				</td>
			</tr>
	</table>
   
</body>
</html>