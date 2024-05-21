<%@page import="java.util.Iterator"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="Model.Customer"%>
<%@page import="Model.Registration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete User</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    /* Custom styles */
    body {
        background-color: beige; /* Beige background */
        margin: 0;
        padding: 0;
    }

    .container {
        margin-top: 50px; /* Adjusted margin-top */
        text-align: center;
    }

    .jumbotron {
        background-color: rgba(255, 255, 255, 0.6); /* Transparent white background */
        padding: 20px;
        border-radius: 10px;
    }

    .form-control {
        width: 50%; /* Adjusted width */
        margin-bottom: 10px; /* Add space between search input and table */
    }

    table {
        width: 100%; /* Full width table */
    }

    th {
        background-color: lightblue;
    }

    .btn-danger {
        margin-top: 5px; /* Adjusted margin */
    }
</style>
</head>
<body>
<center> 
<br> 
<font color="black" size="4" weight="bold"> 
<h2>DELETE USER</h2> 
</font> 
<% if (request.getAttribute("status") != null) {%> 
<h1 class="errmsg"> <%= request.getAttribute("status")%></h1> 
<%}%> 
<div class="container"> 
<div class="jumbotron"> 
<center><input class="form-control" id="search" type="text" placeholder="Search.."> </center>
<table class="table"> 
<thead> 
<tr> 
<th>Slno</th> 
<th>Name</th> 
<th>Email</th> 
<th>Phone</th> 
<th>Delete</th> 
</tr> 
</thead> 
<tbody id="table"> 
<% if (session.getAttribute("id") != null && session.getAttribute("id").equals("1")) { 
Registration reg = new Registration(session); 
ArrayList<Customer> mydata = reg.getUserDetails(); 
Iterator<Customer> itr = mydata.iterator(); 
while (itr.hasNext()) { 
    Customer c = itr.next(); 
%> 
<tr> 
<td><%=c.getId()%></td> 
<td><%=c.getName()%></td> 
<td><%=c.getEmail()%></td> 
<td><%=c.getPhno()%></td> 
<td> 
<form action="delete" method="POST"> 
<input type="hidden" name="userid" value="<%=c.getId()%>"/> 
<input type="submit" class="btn btn-danger" value="Delete" /> 
</form> 
</td> 
</tr>  
<%} 
}%>  
</tbody> 
</table> 
</div> 
</div> 
</center> 
<script> 
$(document).ready(function(){ 
$("#search").on("keyup", function() { 
var value = $(this).val().toLowerCase(); 
$("#table tr").filter(function() { 
$(this).toggle($(this).text().toLowerCase().indexOf(value) > 0) 
}); 
}); 
}); 
</script> 
</body>
</html>
