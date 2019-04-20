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


<form action="<c:url value="/AddCategory"/>" method="post">
<table align=right class="table table-bordered">
  <tr class="Success"> 
      <td colspan="2">
      <center><h2>Category</h2></center></td>
  </tr>
  <tr class="active">
      <td>Category Name</td>
      <td><input type="text" name="cName"/></td>
  </tr>
  <tr class="active"> 
      <td>Category Description</td>
      <td><input type="text" name="cDesc"/></td>
  </tr>
  <tr class="danger"> 
      <td colspan="2"> 
           <center><input type="submit" value="Add Category" class="btn btn-primary"/></center>
      </td>
  </tr>
  </table>
  </form>
  <table class="table table-striped"> 
    <tr class="info">
    <td> Category ID</td>
    <td> Category Name</td>
    <td> Category Desc</td>
    <td> Operations</td>
    </tr>
    <c:forEach items="${listCategories}" var="category">
    <tr class="active">
      <td>${category.categoryID}</td>
      <td>${category.categoryName}</td>
      <td>${category.categoryDesc}</td>
      <td>
         <a href="<c:url value="/editCategory/${category.categoryID}"/>"class="btn btn-success">Edit</a>/
         <a href="<c:url value="/deleteCategory/${category.categoryID}"/>"class="btn btn-danger">Delete</a>
      </td>   
      </tr>
    </c:forEach></table>
    </div>
</body>
</html>