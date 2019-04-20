<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<table class="table table-striped">
<center><h2>Your Receipt</h2></center>
<table class="table table-bordered">
<tr class="warning">
<td>ORDER ID</td>
<td>ESHOI0001${orderDetail.orderId}</td>
<td>Date</td>
<td colspan="2">${orderDetail.orderDate}</td>
</tr>
<tr class="info"> 
<td colspan="5"><h4>Order Items</h4></td>
</tr>

<thead>
     <tr class="danger">
     <td>Product Id</td>
     <td>Product Name</td>
     <td>Quantity</td>
     <td>Price</td>
     <td>SubTotal</td>
    </tr>
<c:forEach items="${cartItemList}" var="cartItem">

<tr class="warning">
  <td>${cartItem.proId}</td>
  <td>${cartItem.proName}</td>
  <td>${cartItem.quantity}</td>
  <td>&#x20B9;${cartItem.proprice}</td>
  <td>&#x20B9;${cartItem.proprice}*${cartItem.quantity}</td>
  </tr>
 </c:forEach>
<tr class="warning">
<td colspan="4">Final Amount</td>
<td colspan="1">&#x20B9;${totalAmount}</td>
</tr>
<tr class="warning">
<td colspan="4"><h4>Shipping Address</h4></td>
<td></td>
</tr>
<tr class="success">
<td>
    Address
</td>
<td colspan="4">
     ${addr}
</td>
</tr>




</table>


</body>
</html>