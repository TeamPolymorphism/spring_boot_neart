<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">

      $(document).ready(function () {
         $(".a-delete").click(function(event) {
            //prevendDefault()는 href로 연결해 주지 않고 
            //단순히 click에 대한 처리를 하도록 해준다.
            event.preventDefault();
            console.log("ajax 호출전");
            
            var trObj = $(this).parent().parent(); // <tr>: 해당열을 삭제해야하니까 <td>의 부모인 <tr>을 받아야한다.
            
            console.log($(this).attr("href"));
            
            $.ajax({
                type : "DELETE",
                url : $(this).attr("href"),
                success: function (result) {       
                console.log(result); 
                  if(result == "SUCCESS"){
                          //getList();
                        $(trObj).remove();  
                                  
                     }                       
                   },
                   error: function (e) {
                       console.log(e);
                   }         
            
            });   
         
         });   
      
      });
   
   </script>
</head>
<body>
	<a href="/">Home</a>
   <h1>공지사항 게시판입니다.</h1>
   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <tr>
         <td>번호</td>
         <td>제목</td>
         <td>날짜</td>
         <td>조회수</td>
         <td>아이디</td>
      </tr>
      <c:forEach items="${list}" var="board">
      <tr>
         <td>${board.bid}</td>
         <td>
            <a href="/board/content_view/${board.bid}">${board.btitle}</a></td>
         <td style="text-overflow:clip; ">${board.bdate}</td>
         <td>${board.bhit}</td>
         <td>${board.membernum }
         <td><a class="a-delete" data-bid='${board.bid}'
					href="/board/list/${board.bid}">삭제</a></td>
      </tr>
      </c:forEach>
      <tr>
         <td colspan="5"> <a href="write_view">글작성</a> </td>
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