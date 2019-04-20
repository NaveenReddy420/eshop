<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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


<form action="<c:url value="/AddSupplier"/>" method="post">
<table align=center class="table table-condensed">
  <tr class="info"> 
      <td colspan="2">
      <center><h2>Supplier</h2></center></td>
  </tr>
  <tr class="active">
      <td>Supplier Name</td>
      <td><input type="text" name="sName"/></td>
  </tr>
  <tr class="active"> 
      <td>Supplier Description</td>
      <td><input type="text" name="sDesc"/></td>
  </tr>
  <tr class="danger"> 
      <td colspan="2"> 
           <center><input type="submit"  value="Add Supplier" class="btn btn-primary" /></center>
      </td>
  </tr>
  </table>
  </form>
  <table class="table table-bordered"> 
    <tr class="success">
    <td> Supplier ID</td>
    <td> Supplier Name</td>
    <td> Supplier Desc</td>
    <td> Operations</td>
    </tr>
    <c:forEach items="${listSuppliers}" var="supplier">
    <tr class="active">
      <td>${supplier.supplierId}</td>
      <td>${supplier.supplierName}</td>
      <td>${supplier.supplierDesc}</td>
      <td>
         <a href="<c:url value="/editSupplier/${supplier.supplierId}"/>"class="btn btn-success">Edit</a>/
         <a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>"class="btn btn-danger">Delete</a>
      </td>   
      </tr>
    </c:forEach></table>
    </div>
</body>
</html>