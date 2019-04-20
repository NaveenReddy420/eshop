<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>

<h3>UserHome</h3>

<div class = "row">

<c:forEach items="${productList}" var="product">

   
   <div class = "col-sm-5 col-sm-5">
   <a href="<c:url value="/productDetailDisplay/${product.proId}"/>" class = "thumbnail">
         <img src = "<c:url value="/resources/images/${product.proId}.jpg"/>" alt = "Generic placeholder thumbnail">
    </a>
    <p> ${product.proName}</p>
    <p> Price: Rs ${product.proprice}/-</p>
    <p> Stock: ${product.stock} /-</p>

    </div>  


</c:forEach>
</div>


</body>
</html>