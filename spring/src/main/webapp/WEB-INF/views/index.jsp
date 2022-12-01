<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <title>Title</title>

    <style>

        img{
            height: 40px;
        }

    </style>

</head>
<body>

<h1>다있소</h1>

<ul>

    <li>카테고리 </li>

    <c:if test="${loginInfo eq null}">
        <li><a href="/login">로그인</a></li>
        <li><a href="/member/register">회원가입</a></li>
    </c:if>

    <c:if test="${loginInfo ne null}">
        <li> "${loginInfo.uname}"</li>
        <li> <a href="/sale/list">상품 구경하기</a> </li>
        <li><a href="/logout"> 로그아웃 </a></li>
    </c:if>

</ul>

</body>
</html>