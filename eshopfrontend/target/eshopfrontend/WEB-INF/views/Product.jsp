<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<br/><br/>
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


<form:form action="InsertProduct" modelAttribute="product" method="post" enctype="multipart/form-data">
<table align="center" class="table table-bordered">
     <tr class="danger">
        <td colspan="2"><center>Product Information</center></td>
     </tr>
     <tr class="active">
              <td>Product Desc</td>
              <td><form:input path="proDesc"/></td>
           </tr>
     <tr class="active">
         <td>Product Name</td>
         <td><form:input path="proName"/></td>
      </tr>
      <tr class="active">
          <td>Price</td>
          <td><form:input path="proprice"/></td>
       </tr>
       <tr class="active">
          <td>Stock</td>
          <td><form:input path="stock"/></td>
       </tr>
       <tr class="active">
           <td>Category</td>
           <td> 
              <form:select path="categoryID">
                   <form:option value="0" label="---Select from the List---"/>
                   <form:options items="${categoryList}"/>
              </form:select>
            </td>
         </tr>
         <tr class="active">
             <td>Supplier</td>
             <td><form:input path="supplierId"/></td>
          </tr>
          <tr class="active">
             <td>Image</td>
             <td><form:input type="file"  path="pimage"/></td>
          </tr>
         <tr class="warning">
              <td colspan="2"><center><input type="submit" value="InsertProduct" class="btn btn-primary"/></center></td>
           </tr>
        </table>
        </form:form>
        
        
        <table align="center" class="table table-bordered">
        <tr class="danger">
           <td>Product</td>
           <td>Product Name</td>
           <td>Price</td>
           <td>Stock</td>
           <td>Supplier</td>
           <td>category</td>
           <td>Operations</td>
         </tr>
         <c:forEach items="${productList}" var="product">
         <tr class="info">
            <td><img width=50 height=50 src = "<c:url value="/resources/images/${product.proId}.jpg"/>"></td>
            <td>${product.proName}</td>
            <td>${product.proprice}</td>
            <td>${product.stock}</td>
            <td>${product.supplierId}</td>
            <td>${product.categoryID}</td>
            <td>
                  <a href="<c:url value="/editProduct/${product.proId}"/>"class="btn btn-success">Edit</a>/
                  <a href="<c:url value="/deleteProduct/${product.proId}"/>"class="btn btn-danger">Delete</a>
            </td>   
          </tr>
          </c:forEach>
          </table>
          </div>
          </body>
          </html>