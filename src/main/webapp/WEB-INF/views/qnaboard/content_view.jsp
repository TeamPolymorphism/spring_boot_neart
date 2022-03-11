<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
		function del(url) {
			if(confirm("삭제 하시겠습니까?") == true){
				location = url;
			}
		}
	</script>

</head>
<body>
   <table width="500" cellpadding="0" cellspacing="0" border="1">
   <input type="hidden" name="bgroup" value="${content_view.bgroup}"/>
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
				<a href="/qnaboard/list">목록보기</a> &nbsp;&nbsp;
				<a href="/qnaboard/modify_view?bid=${content_view.bid}">수정하기</a> &nbsp;&nbsp;
				<a href="/qnaboard/reply_view?bid=${content_view.bid}&bgroup=${content_view.bgroup}">답글달기</a> &nbsp;&nbsp;
				<a href="javascript:del('delete?bid=${content_view.bid}')">삭제하기</a> &nbsp;&nbsp;
				</td>
			</tr>
	</table>
   
</body>
</html>