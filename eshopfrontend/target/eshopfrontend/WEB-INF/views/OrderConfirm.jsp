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
<center><h2>Your Order</h2></center>
<table class="table table-bordered">
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
<td colspan="4">Shipping Address</td>
<td></td>
</tr>
<form action="<c:url value="/updateAddress"/>" method="post">
<tr class="success">
<td>
    Address
</td>
<td colspan="3">
<textarea name="addr" colspan="20" rows="5">${addr}</textarea>
</td>
<td>
  <input type="submit" value="Update Address" class="btn btn-primary"/>
  </td>
</tr>
</form>
<tr class="warning">
<td colspan="5"></td></tr>
<tr class="active">
<td colspan="3">
<center><a href="<c:url value="/cart"/>" type="button" class="btn btn-primary">Modify Cart</a></center>
</td>
<td colspan="3">
<center><a href="<c:url value="/payment"/>" type="button" class="btn btn-warning">Order Confirm</a></center>
</tr>



</table>
</div>
</body>
</html>