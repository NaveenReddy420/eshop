<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale="1">

</head>
<body>
<div class="container">
 <div class="row main">
  <div class="main-login main-center">
   <h5>Register</h5>

      <form:form method="post" action="addUser" modelAttribute="userInfo">
      
      <div class="form-group">
        <label for="name" class="cols-sm-2 control-label">Your Name</label>
         <div class="cols-sm-10">
          <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
            <input type="text" name="customerName" id="customerName"class="form-control input-sm chat-input" placeholder="Your name" />
          </div>
         </div>
        </div>

       
        
        <div class="form-group">
        <label for="username" class="cols-sm-2 control-label">UserName</label>
         <div class="cols-sm-10">
          <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
            <input type="text" name="userName" id="userName"class="form-control input-sm chat-input" placeholder="User Name" />
          </div>
         </div>
        </div>
        
        <div class="form-group">
        <label for="customerAddr" class="cols-sm-2 control-label">Address</label>
         <div class="cols-sm-10">
          <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
            <input type="text" name="customerAddr" id="customerAddr"class="form-control input-sm chat-input" placeholder="Address" />
          </div>
         </div>
        </div>
        
        <div class="form-group">
        <label for="password" class="cols-sm-2 control-label">Password</label>
         <div class="cols-sm-10">
          <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
            <input type="password" name="password" id="password"class="form-control input-sm chat-input" placeholder="Password" />
          </div>
         </div>
        </div>
        
        <div class="form-group">
           <input type="submit" value="Register"/>
        </div>
   </form:form>        

</div>
</div>
</div>
</body>
</html>