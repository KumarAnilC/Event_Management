<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script> 
<style>
    /* Custom styles */
    body {
        background-image: url('https://wallpapercave.com/wp/wp10715825.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        margin: 0;
        padding: 0;
    }

    .center {
        margin-top: 50px; /* Adjusted margin-top */
        text-align: center;
    }

    form {
        background-color: rgba(255, 255, 255, 0.6); /* Transparent white background */
        padding: 20px;
        border-radius: 10px;
        width: 30%; /* Decrease width of form container */
        display: inline-block;
    }

    form h2 {
        color: blue; /* Blue text color */
        text-align: center;
    }

    form .form-group {
        margin-bottom: 10px; /* Add space between form groups */
    }

    form input[type="email"],
    form input[type="password"],
    form button[type="submit"] {
        width: 80%; /* Full width input fields and button */
        padding: 5px; /* Add padding to input fields */
        border-radius: 5px; /* Rounded corners */
        border: 1px solid #ccc; /* Border color */
        display: block; /* Display elements as block */
        margin: 0 auto; /* Center elements horizontally */
    }

    form button[type="submit"] {
        background-color: darkblue; /* Grey button */
        border-color: transparent;
        color: white; /* Text color */
    }

    form button[type="submit"]:hover {
        background-color: blue; /* Light grey button on hover */
    }

    .error {
        color: red;
        font-size: 12px; /* Adjust the font size as desired */
    }
</style>
</head>
<body>
    <div class="msg">
        <% if (request.getAttribute("status") != null) {%> 
            <%= request.getAttribute("status")%>
        <%}%>
    </div>
    <div class="center"> <!-- Center element added -->
        <form method="POST" id="forgotPasswordForm" action="register"> 
           
            <br> 
            <div class="container"> 
             <font color="blue" size="4"> 
            <h2> Reset Password  </h2> 
            </font> 
                <div class="form-group"> 
                    <label>Email address</label> 
                    <input type="email" class="form-control" placeholder="Enter email"  name="email"> 
                </div> 
                <div class="form-group"> 
                    <label>New Password</label> 
                    <input type="password" class="form-control"  placeholder="Enter New Password" id= "pw" name="pw"> 
                </div> 
                <div class="form-group"> 
                    <label>Confirm Password</label> 
                    <input type="password" class="form-control"  placeholder="Confirm Password" name="cp"> 
                </div> 
                <button type="submit" class="btn btn-primary" name="forgotpass">Submit</button> 
                <div style="text-align: center; margin-top: 15px;"> 
                </div> 
            </div> 
        </form> 
    </div>
<script>
    $(document).ready(function() {
        $("#forgotPasswordForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
                pw: {
                    required: true,
                    minlength: 6
                },
                cp: {
                    required: true,
                    minlength: 6,
                    equalTo: "#pw"
                }
            },
            messages: {
                email: {
                    required: "Please enter your email address.",
                    email: "Please enter a valid email address."
                },
                pw: {
                    required: "Please enter the password.",
                    minlength: "Password must be at least 6 characters long."
                },
                cp: {
                    required: "Please re-enter the password.",
                    minlength: "Password must be at least 6 characters long.",
                    equalTo: "Passwords do not match."
                }
            },
            <%--errorPlacement: function(error, element) {
                error.addClass("error");
                error.insertAfter(element);
            }--%>
        });
    });
</script>
</body>
</html>
