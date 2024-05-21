<%@page contentType="text/html" pageEncoding="UTF-8"%> 

<!DOCTYPE html> 
<html> 
<head> 
     <meta charset="ISO-8859-1">
    <title>JSP Page</title> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> 
    <style>
    .navbar {
        padding: 3px;
        transition: 1s;
        background-color:black;
        
    }
    
    .navbar-brand {
        font-weight: bold;
        font-style: italic;
        font-size: 40px; /* Increase font size */   
        text-transform: capitalize;
        margin-top: 7px;
        text-align: center; /* Center align */
    }
    /* Highlight the brand name */
    .navbar-brand {
        color: white; /* Change color to dark blue */
    }
    /* Adjust padding and margin */
    .navbar-brand {
        padding-left: 20px; /* Adjust padding */
        margin-right: 25px;
    }
    .navbar-nav {
        text-align: left; /* Align to left */
    }
    .nav-item {
        margin-top: 6px;
        margin-right: 10px; /* Adjust margin between items */
    }
    .ml-auto {
        margin-left: auto !important; /* Move to right */
    }
    .nav-link {
        font-weight: bold;
        font-size: 15px; /* Decrease font size */
        
        color: white;
        margin-left: 10px;
       /* transition: 0.6s;*/
        border-radius: 20px;
        text-transform: capitalize;
    }
    .nav-link:hover {
      /*  transform: bold;
        background: pink;*/
        
        font-size:20px;
    }
    .center-text {
        text-align: center; /* Center align */
    }
    .tagline {
        font-size: 10px; /* Adjust tagline font size */
        margin-top: -5px; /* Adjust margin for tagline */
        color: white; 
        font-style: default;
    }
    /* Adjusting width of the navbar */
   
    </style>
</head> 

<body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
    <!-- navbar start -->
    <nav class="navbar navbar-expand-sm fixed-top scroll">
        <div class="container-fluid">
            <!-- Center-aligned content -->
            <div class="navbar-brand center-text">
                <h7>SkyEvents</h7>
                <p class="tagline">"creating memories, one event at a time"</p>
            </div>
            <div class="ml-auto">
                <ul class="navbar-nav">
                 <li class="nav-item"><a href="index.jsp+" class="nav-link">HOME</a></li>
                    <li class="nav-item"><a href="Events.jsp" class="nav-link">EVENTS</a></li>
                    <li class="nav-item"><a href="aboutus.jsp" class="nav-link">ABOUT US</a></li>
                <% if (session.getAttribute("uname") != null) {%> 
               
                
                <% if (session.getAttribute("id").equals("1")) {%> 
                    <li class="nav-item"><a href="delete.jsp" class="nav-link">DELETE</a></li>
                    <li class="nav-item"><a href="search.jsp" class="nav-link">SEARCH</a></li>
                     <%}%> 
                      <li class="nav-item"><a href="edit.jsp" class="nav-link">EDIT</a></li>
                <li class="nav-item"><a href="register?logout=yes" class="nav-link">LOGOUT</a></li>
                <%}else {%> 
                    
                    <li class="nav-item"><a href="Registration.jsp" class="nav-link">REGISTER</a></li>
                    <li class="nav-item"><a href="Login.jsp" class="nav-link">LOGIN</a></li>
                    <%}%> 
                   
                </ul>
            </div>
        </div>
    </nav> 
</body> 
</html>
