<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#updateForm").submit(function(event) {

			event.preventDefault(); // form 태그 체크

			var bid = $("#bid").val();
			var btitle = $("#btitle").val();
			var bcontent = $("#bcontent").val();

			console.log($(this).attr("action"));

			var form = {
				bid : bid,
				btitle : btitle,
				bcontent : bcontent

			};

			// json 과 객체차이는 키에 "" 있는가 없는가 = 
			// ex) "bid": bid, bid: bid   //// "key": 는 json이다.  
			console.log(JSON.stringify(form));

			$.ajax({
				type : "PUT",
				url : $(this).attr("action"),
				cache : false,
				contentType : 'application/json; charset=utf-8',
				data : JSON.stringify(form),
				success : function(result) {
					if (result == "SUCCESS") {
						//list로               
						$(location).attr('href', '/board/list');
					}
				},
				error : function(e) {
					console.log(e);
				}
			})

		}); // end submit()

	}); // end ready()

	function inputCheck() {
		let btitleInput = document.form.btitle.value;
		let bcontentInput = document.form.bcontent.value;
		if (!btitleInput) {
			alert("제목을 입력해주세요.");
			return false;
		} else if (!bcontentInput) {
			alert("내용을 입력해주세요.")
			return false;
		} else {
			return true;
		}
	}
</script>

</head>
<body>
	<form id="updateForm" action="/board/modify/${content_view.bid}"
		name="form" method="post" onsubmit="return inputCheck()">
		<table width="500" cellpadding="0" cellspacing="0" border="1">

			<tr>
				<td>글번호</td>
				<td><input id="bid" type="text" name="bid" style="border:0;"
				value="${content_view.bid}" readonly></td>
			</tr>

			<tr>
				<td>제목</td>
				<td><input id="btitle" type="text" name="btitle"
					value="${content_view.btitle}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="bcontent" id="bcontent">${content_view.bcontent}</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="입력">
					&nbsp;&nbsp; <a href="/board/list">목록보기</a></td>
			</tr>
			<input name="${_csrf.parameterName}" type="hidden"
				value="${_csrf.token}" />

		</table>
	</form>
</body>
</html>