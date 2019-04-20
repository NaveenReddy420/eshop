<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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



<c:url var="updateproduct" value="/UpdateProduct"/>
<form:form action="${UpdateProduct}" modelAttribute="product" method="post">
<table align="center" class="table table-bordered"> 
    <tr >
       <td colspan="2" class="warning"><center>Update Product</center></td>
     </tr>
     <tr class="active">
       <td> Product ID </td>
       <td><form:input path="proId"/></td>
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
          <tr class="success">
              <td colspan="2"><center><input type="submit" value="Update Product" class="btn btn-success"/></center></td>
           </tr>
        </table>
        </form:form>
        </div>
          </body>
        </html>
