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
<form action="<c:url value="/receipt"/>" method="post">
<table class="table table-striped" align="center">
<tr class="info">
<td  colspan="2"><center>Payment Details</center></td>
</tr>
<tr class="warning">
<td colspan="2">
   <input type="radio" name="pmode" value="CC">Credit Card
   <input type="radio" name="pmode" value="COD">Cash On Delivery
   </td>
</tr>
<tr class="active">
<td>Card Number</td>
<td><input type="text" name="cardnumber"></td>
</tr>
<tr class="active">
<td>Valid<input type="text" name="Valid"/></td>
<td>CVV<input type="text" name="CVV"/></td>
</tr>
<tr class="active">
<td>Name</td>
<td><input type="text" name="name"/></td>
</tr>
<tr class="success">
<td colspan="2"><center><input type="submit" value="Pay" class="btn btn-success"/></center></td>
</tr>
</table>
</form>
</div>

</body>
</html>