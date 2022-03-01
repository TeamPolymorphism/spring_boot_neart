<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <title>회원가입</title>
</head>

<body>

<h1>회원가입</h1>

<!-- 
MEMBERNUM	NUMBER
ID	VARCHAR2(200 BYTE)
PASSWORD	VARCHAR2(200 BYTE)
NAME	VARCHAR2(200 BYTE)
YEAR	NUMBER
MONTH	NUMBER
DAY	NUMBER
ADDRESS	VARCHAR2(200 BYTE)
PHONENUM	VARCHAR2(100 BYTE)
-->

<c:url value="/add/addUser" var="addUserUrl" />
<p>${addUserUrl}</p>
<form:form name="frmMember" action="${addUserUrl}" method="POST">
    <p>
        <label for="id">아이디</label>
        <input type="text"  name="id" />
    </p>
    <p>
        <label for="password">비밀번호</label>
        <input type="password" name="password"/>
    </p>
    <p>
        <label for="name">이름</label>
        <input type="text" name="name"/>
    </p>
    <p>
        <label for="year">생년월일-년도</label>
        <input type="text" name="year"/>
    </p>
    <p>
        <label for="month">생년월일-월</label>
        <input type="text" name="month"/>
    </p>
    <p>
        <label for="day">생년월일-일</label>
        <input type="text" name="day"/>
    </p>
    <p>
        <label for="address">주소</label>
        <input type="text" name="address"/>
    </p>
    <p>
        <label for="phonenum">연락처</label>
        <input type="text" name="phonenum"/>
    </p>
    <button type="submit" class="btn">가입하기</button>
</form:form>
</body>
</html>