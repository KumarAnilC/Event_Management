<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
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
    }

    .container {
        margin-top: 100px;
    }

    form {
        background-color: rgba(255, 255, 255, 0.6); /* Transparent white background */
        padding: 20px;
        border-radius: 10px;
        width: 30%; /* Decrease width of form container */
        margin: auto; /* Center horizontally */
    }

    form h2 {
        color: #333; /* Dark text color */
        text-align: center;
    }

    form table {
        margin: auto; /* Center table horizontally */
    }

    form table tr {
        margin-bottom: 20px; /* Add space between rows */
    }

    form table tr td {
        padding: 3px;
    }

    form input[type="submit"] {
        background-color: darkblue; /* Grey button */
        border-color: transparent;
        color: white; /* Text color */
    }

    form input[type="submit"]:hover {
        background-color: blue; /* Light grey button on hover */
    }

    form input[type="text"],
    form input[type="email"],
    form input[type="number"],
    form input[type="password"] {
        width: 100%; /* Full width input fields */
        border-radius: 5px; /* Rounded corners */
        border: 1px solid #ccc; /* Border color */
    }

    .error {
        color: red;
        font-size: 12px; /* Adjust the font size as desired */
    }
</style>
</head>
<body>

<script>
    $(document).ready(function() {
        $("#signup").validate({
            rules: {
                name: {
                    required: true
                },
                addr: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
                },
                phone: {
                    required: true,
                    minlength: 10,
                    maxlength: 10,
                    digits: true
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
                name: {
                    required: "Please enter the name."
                },
                email: {
                    required: "Please enter the email.",
                    email: "Please enter a valid email address."
                },
                phone: {
                    required: "Please enter the phone number.",
                    minlength: "Please enter a 10-digit number.",
                    maxlength: "Please enter a 10-digit number.",
                    digits: "Please enter only digits."
                },
                addr: {
                    required: "Please enter the address."
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
            errorPlacement: function(error, element) {
                error.addClass("error");
                error.insertAfter(element);
            }
        });
    });
</script>

<center>
    <br><br>
    <% if (request.getAttribute("status") != null) { %>
    <div id="msg"> <%= request.getAttribute("status")%></div>
    <% } %>
    <form method="Post" id="signup" action="register">
        <font color="black">
            <h2> Registration Form</h2>
        </font>
        <table>
            <tr>
                <td> NAME </td>
                <td> <input type="text" id="name" name="name"></td>
            </tr>
            <tr>
                <td> PHONE NUMBER </td>
                <td> <input type="number" name="phone"> </td>
            </tr>
            <tr>
                <td> Address </td>
                <td> <input type="text" name="addr"> </td>
            </tr>
            <tr>
                <td> Email </td>
                <td> <input type="email" name="email"></td>
            </tr>
            <tr>
                <td> Password </td>
                <td> <input type="password" id="pw" name="pw"></td>
            </tr>
            <tr>
                <td> Confirm Password </td>
                <td> <input type="password" name="cp"></td>
            </tr>
            <tr>
                <td> </br> <input type="submit" name="register" value="Register"></td>
            </tr>
        </table>
    </form>
</center>

</body>
</html>
