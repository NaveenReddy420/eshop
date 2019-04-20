<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<body>

<h1>Welcome to the Home Page</h1>

<spring:url var="css" value="/assets/css" />
<spring:url var="images" value="/resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<div class="container text-center"> 
  <h3>Electronics</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="${images}/S1.png" class="img-responsive" style="width:100%" alt="Image">
      
      <h3>&#x20B9; 599-1599</h3>
      <h4 class="h">Electronics </h4>
    </div>
    <div class="col-sm-4"> 
      <img src="${images}/S2.jpg" class="img-responsive" style="width:100%" alt="Image">
       
      <h3>&#x20B9;1099-2999</h3> 
      <h4 class="h">Televisions </h4>  
    </div>
   </body>
</html>