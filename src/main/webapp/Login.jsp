<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script> 
<style>
    /* Custom styles */
    body {
       background-image: url('https://images.pexels.com/photos/459335/pexels-photo-459335.jpeg?auto=compress&cs=tinysrgb&w=600');
       
      /*  background-image: url('images/loginimg3.jpeg');*/
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
    .container {
        margin-top: 100px;
    }
    .form-container {
        background-color: rgba(255, 255, 255, 0.6); /* Transparent white background */
        padding: 20px;
        border-radius: 10px;
        width: 80%; /* Decrease width of form container */
        margin: auto; /* Center horizontally */
    }

    .form-container h2 {
        color: #333; /* Dark text color */
        text-align: center;
    }

    .form-container .form-group {
        margin-bottom: 20px;
    }

    .form-container .btn-primary {
        background-color: darkblue; /* Grey button */
        border-color: transparent;
    }

    .form-container .btn-primary:hover {
        background-color: blue; /* Light grey button on hover */
    }

    .form-container .text-center a {
        color: black; /* Black color for forgot password and already registered links */
    }

    .form-container .text-center a:hover {
        color: rgba(1, 0, 0, 0.8); /* Slightly transparent black on hover */
    }

    /* Increase space between links */
    .form-container .text-center .mt-3 a {
        margin-right: 50px; /* Adjust the margin to increase/decrease space */
    }
    .msg {
        text-align: center;
        margin-bottom: 10px;
        display: none; /* Hide by default */
    }
    .error {
        color: red;
        font-size: 12px; /* Adjust the font size as desired */
    }
</style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
            <div class="msg">
                <% if (request.getAttribute("status") != null) {%> 
                    
                        <%= request.getAttribute("status")%>
                    
                <%}%> 
                </div> 
                <div class="form-container">
                    <form method="POST" id="login" action="register"> 
                        <h2>Login</h2> 
                        <div class="form-group"> 
                            <label>Email address</label> 
                            <input type="email" class="form-control" placeholder="Enter email" name="email"> 
                        </div> 
                        <div class="form-group"> 
                            <label>Password</label> 
                            <input type="password" class="form-control" placeholder="Enter Password" name="pw"> 
                        </div> 
                        <button type="submit" class="btn btn-primary btn-block" name="login">Submit</button> 
                        <div class="text-center mt-3"> 
                            <a href="forgotpass.jsp">Forgot password?</a> 
                            <span>|</span> <!-- Separator between links -->
                            <a href="Registration.jsp">Not Registered?</a>
                        </div> 
                    </form> 
                </div>
            </div> 
        </div>
    </div>
<script>
    $(document).ready(function() {
        $("#login").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
                pw: {
                    required: true
                }
            },
            messages: {
                email: {
                    required: "Please enter your email address.",
                    email: "Please enter a valid email address."
                },
                pw: {
                    required: "Please enter your password."
                }
            },
           <%-- errorPlacement: function(error, element) {
                error.addClass("error");
                error.insertAfter(element);
            }--%>
        });
    });
</script>
</body>
</html>
