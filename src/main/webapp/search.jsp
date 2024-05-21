<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Customer"%>
<%@page import="Model.Registration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VIEW CUSTOMER DETAILS</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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

    .form-group {
        margin-bottom: 10px; /* Add space between form groups */
    }

    .form-control {
        width: 50%; /* Adjusted width */
    }

    .btn-block {
        width: 50%;/* Adjusted width to match form-control */
        color:black;
        font-weight:bold;
        background-color:lightgrey ;
    }

    .table {
        width: 100%; /* Full width table */
    }

    th {
        background-color: lightgrey;
    }
</style>
</head>

<body>
<center>
    <% if (session.getAttribute("id") != null && session.getAttribute("id").equals("1")) {%>
    <font color="black" weight="bold" size="5">
    <h2> Search module </h2>
    </font>
    <br><br>
    <form action="search" method="POST">
        <div class="form-group ">
            <label >Customer id:</label>
            <input type="text" name="id" class="form-control" >
        </div>            
        <button type="submit" class="btn btn-primary btn-block" name="submit">Search</button>
    </form>
    <% if (request.getParameter("id") != null) {%>
    <div class="container">
        <div class="jumbotron">

            <table class="table">
                <thead>
                    <tr>
                        <th>Slno</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                    </tr>
                </thead>
                <tbody id="table">
                    <% Registration reg = new Registration(session);
                        ArrayList<Customer> mydata = reg.getUserinfo(request.getParameter("id"));
                        Iterator<Customer> itr = mydata.iterator();
                        while (itr.hasNext()) {
                        	Customer c = itr.next();
                    %>
                    <tr>
                        <td><%=c.getId()%></td>
                        <td><%=c.getName()%></td>
                        <td><%=c.getEmail()%></td>
                        <td><%=c.getPhno()%></td>                           
                    </tr> 
                    <%}%> 
                </tbody>
            </table>
        </div>
    </div>
    <%}
    
        }%> 
        
</center>
</body>
</html>
