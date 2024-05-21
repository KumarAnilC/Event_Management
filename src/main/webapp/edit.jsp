<!DOCTYPE html>
<%@page import="Model.Customer"%>
<%@page import="Model.Registration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    /* Custom styles */
    body {
        background-image: url('https://wallpapercave.com/wp/wp10715825.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
    
    .transparent-white-bg {
        background-color: rgba(255, 255, 255, 0.6); /* Transparent white background */
        padding: 20px;
        border-radius: 10px;
    }
</style>
</head>
<body class="d-flex align-items-center justify-content-center vh-100">
<% if (session.getAttribute("uname") != null) {
    Registration reg = new Registration(session);
    Customer c = reg.getInfo();
%>
<div class="form-container transparent-white-bg">
    <form action='register' method='POST'> 
        <h2 class="text-center mb-4">Edit Profile</h2> 
        <div class="form-group"> 
            <label>Name</label> 
            <input type="text" class="form-control" name="name" value="<%=c.getName()%>"> 
        </div> 
        <div class="form-group"> 
            <label>Phone-Number</label> 
            <input type="number" class="form-control" name="pno" value="<%=c.getPhno()%>"> 
        </div> 
        <div class="form-group"> 
            <label>Email address</label> 
            <input type="email" class="form-control" name="email" value="<%=c.getEmail()%>"> 
        </div> 
        <button type="submit" class="btn btn-primary btn-block" name="submit">Update</button> 
    </form> 
</div>
<%}%>
</body>
</html>
