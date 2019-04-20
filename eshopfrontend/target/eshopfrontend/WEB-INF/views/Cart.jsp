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
<center><h2>My Cart</h2></center>
<table class="table table-bordered">
 <thead>
     <tr class="danger">
     <td>Product Id</td>
     <td>Product Name</td>
     <td>Quantity</td>
     <td>Price
     <td>SubTotal</td>
     <td>Operation </td>
</tr>
<c:forEach items="${cartItemList}" var="cartItem">
<form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get">
<tr class="warning">
  <td>${cartItem.proId}</td>
  <td>${cartItem.proName}</td>
  <td><input type="text" value="${cartItem.quantity}" name="quantity"></td>
  <td>&#x20B9;${cartItem.proprice}</td>
  <td>&#x20B9;${cartItem.proprice}*${cartItem.quantity}</td>
  <td>
     <input type="submit" value="UPDATE" type="button" class="btn btn-success"/>
     <a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class="btn btn-danger">DELETE</a>
     </td>
     </tr>
 </form>
</c:forEach>
<tr class="warning">
<td colspan="4">Final Amount</td>
<td colspan="2">&#x20B9;${totalAmount}</td>
</tr>
<tr class="active">
<td colspan="3">
<center><a href="<c:url value="/productDisplay"/>" type="button" class="btn btn-primary">Continue Shopping</a></center>
</td>
<td colspan="3">
<center><a href="<c:url value="/checkout"/>" type="button" class="btn btn-warning">Check Out</a></center>
</tr>
</table>
</div>
</body>
</html>
