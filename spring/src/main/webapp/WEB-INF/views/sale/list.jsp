<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-11
  Time: 오전 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

  <title>판매 리스트</title>

  <style>

    td{
      padding: 10px;
      text-align: center;
    }

    #img{
      width: 50px;
      height: 50px;
    }

  </style>

</head>
<a>

<h1>${title}</h1>

<table>

  <tr>

    <td>상품번호</td>
    <td></td>
    <td>상품명</td>
    <td>판매금액</td>


  </tr>

  <c:forEach var="sale" items="${list}">

    <tr>

      <td>${sale.pnumber}</td>
      <td><a href="/sale/read?pnumber=${sale.pnumber}"><img src="/image/${sale.image}" id="img"></a></td>
      <td><a href="/sale/read?pnumber=${sale.pnumber}">${sale.pname}</a></td>
      <td>${sale.price}</td>


    </tr>

  </c:forEach>

</table>

<a href="/sale/save">상품 등록하기</a> <a href="/index">돌아가기</a>


</body>
</html>