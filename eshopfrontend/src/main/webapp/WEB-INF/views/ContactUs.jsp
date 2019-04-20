<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>

<style type="text/css">
.contact-form {
    margin-top:70px;
}
</style>

<body>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
<div class="row">
<div class="col-sm-4">
<h3>Contact eshop</h3>
<hr>
<address>
<strong>Email:</strong> <a href="mailto:#"> eshop@mail.com</a><br><br>
<strong>Phone:</strong> (555)123-7859
</address>
</div>
    
<div class="col-sm-8 contact-form">
<form id="contact" method="post" class="form" role="form">
<div class="row">
<div class="col-xs-6 col-md-6 form-group">
<input class="form-control" id="name" name="name" placeholder="Name" type="text" required autofocus />
</div>
<div class="col-xs-6 col-md-6 form-group">
<input class="form-control" id="email" name="email" placeholder="Email" type="email" required />
</div>
</div>
<textarea class="form-control" id="message" name="message" placeholder="Message" rows="5"></textarea>
<br />
<div class="row">
<div class="col-xs-12 col-md-12 form-group">
<button class="btn btn-primary pull-right" type="submit">Submit</button>
</form>
</div>
</div>
</body>
</html>