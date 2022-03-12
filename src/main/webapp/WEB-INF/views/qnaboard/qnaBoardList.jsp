<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<span><a href="/">Home</a></span>
   <h1>QnA 게시판입니다.</h1>
   <table width="500" cellpadding="0" cellspacing="0" border="1">
   
      <tr>
         <td>번호</td>
         <td>제목</td>
         <td>날짜</td>
         <td>조회수</td>
         <td>아이디</td>
      </tr>
      <c:forEach items="${list}" var="board">
      <input type="hidden" name="bgroup" value="${board.bgroup}"/>
      <tr>
         <td>${board.bid}</td>
         <td>
         	<c:forEach begin="1" end="${board.bindent}">[답변]</c:forEach>
            <a href="/qnaboard/content_view?bid=${board.bid}&bgroup=${board.bgroup}">${board.btitle}</a></td>
         <td>${board.bdate}</td>
         <td>${board.bhit}</td>
         <td>${board.membernum}
      </tr>
      </c:forEach>
      <tr>
         <td colspan="5"> <a href="/qnaboard/write_view">글작성</a> </td>
      </tr>
   </table>
   
   <c:if test="${pageMaker.pre}">
         <a href="list${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
   </c:if>

	<!-- 링크를 걸어준다 1-10페이지까지 페이지를 만들어주는것  -->
	<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
		<a href="list${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>
	      
	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a href="list${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
	</c:if>
</body>
</html>