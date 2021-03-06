<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<title>Deposits | รับฝากซื้อสินค้าจากต่างประเทศเป็นเรื่องง่ายๆ</title>
<meta http-equiv="Content-Language" content="th">
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/orderstyle.css">
<script src="bootstrap/3.3.6/js/jquery.min.js"></script>
<script src="bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="img/title-3.ico" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/function.js"></script>
</head>
<body>
<%@ include file ="header.jsp" %>

  <div class="container" style="padding-top:9%;">
	<a href="index.jsp">หน้าแรก</a> >
	<a href="deposit">รายการรับฝาก</a>
	<span>> รายละเอียดรายการรับฝาก</span><br/></br>
    <div class="table-responsive">
      <table class="table table-hover">
        <thead>
          <tr class="success">
            <th>เลขบัตรประชาชน</th>
            <th>คนที่เราฝาก</th>
            <th>สินค้า</th>
            <th>ราคา</th>
            <th>จำนวน</th>
            <th>รูปภาพ</th>
            <th>วันที่ทำรายการ</th>
          </tr>
        </thead>
        <tbody>

          <c:forEach items="${buyorderlist}" var="order">
            <tr class="info">
              <td><c:out value="${order.idCard}"/></td>
              <td><c:out value="${order.nameMember}"/></td>
              <td><c:out value="${order.productName}"/></td>
              <td><fmt:formatNumber type="number" minFractionDigits="2" value="${order.priceProduct}" /></td>
              <td><c:out value="${order.piece}"/></td>
              <c:choose>
                      <c:when test="${order.picProduct.equals('')}">
      					<td><img src="product/no_image_thumb.gif" width="120px" height="100px" /></td>
      				</c:when>
                      <c:otherwise>
      					<td><img src="product/<c:out value='${order.picProduct}'/>" width="100px" height="100px" /></td>
      				</c:otherwise>
                    </c:choose>
              <td><c:out value="${order.currentDate}"/></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>
