<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>

<h3>Admin Home Page</h3>

<div class = "row">

<c:forEach items="${productList}" var="product">

   
   <div class = "col-sm-5 col-sm-5">
            <img src = "<c:url value="/resources/images/${product.proId}.jpg"/>" alt = "Generic placeholder thumbnail">
   
    <p> ${product.proName}</p>
    <p> Price: &#x20B9; ${product.proprice}/-</p>
    <p> Stock: ${product.stock} /-</p>

    </div>  


</c:forEach>
</div>
</body>
</html>


</body>
</html>