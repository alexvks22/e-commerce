<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "ecommerce.Order" %>
<%@page import = "ecommerce.Product" %>
<%@page import = "java.util.Date" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>

<!--  bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	

</head>

<% Order order = (Order) session.getAttribute("order");
	Product p = null;
	if (order != null)
		p = order.getProduct();
	%>	

<body style="background-color:grey">
<div class="jumbotron">
	<h1 class="display-3">Order Details</h1>
</div>
<div class="container text-white" >
	<p> <strong> Date: </strong> 
	<br>
	<%= order.getDate() %> </p>
	<p> <strong> Product: </strong>
	<br>
	<%= p.getName() %>
	<p> <strong> Description: </strong> 
	<br>
	<%= p.getDescription() %> </p>
	<p> <strong> Price: </strong>
	<br> 
	<%= p.getPrice() %> </p>
	<br>
  
  <a href="../index.jsp" class="btn btn-primary" role="button">Go back to Home</a>
</div>


</body>
</html>