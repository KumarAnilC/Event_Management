<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <style>
        footer{
            background: lightgrey;
            padding: 5px;
            
        }
        footer h6{
            font-weight: bold;
            color: white !important;
            
            font-size:15px;
            margin-bottom: 5px !important;
        }
        footer span{
           
            color: black !important;
            
            font-size:12px;
        }
        footer input{
            margin: 20px auto !important;
        }
        .copyright-footer {
            text-align: left;
            background: grey;
            padding: 5px 10px;
            color: white;
            font-size:10px;
        }
        .social-icons i {
            color: black;
            margin-right: 20px;
        }
       
    </style> 
</head> 
<body> 
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
    
    
    <footer>
    <div class="container">
        <div class="row text-center justify-content-center">
        <!--  <div class="col-sm-2">
                <h6>SkyEvents</h6>
                <p class="tagline">"creating memories, one event at a time"</p>
                 <span><i class="fas fa-map-marker-alt"></i> Vijayanagar,Bangalore-560040</span>
                <br>
                <span><i class="fas fa-phone"></i> +91 9008754334</span>
                <br>
                <span><i class="fas fa-envelope"></i> skyevents24@gmail.com</span>
                
            </div>-->
            
            <div class="col-sm-2">
                <h6>Address</h6>
                <span><i class="fas fa-map-marker-alt"></i> Vijayanagar</span>
                <br>
                <span><i class="fas fa-phone"></i> +91 9008754334</span>
                <br>
                <span><i class="fas fa-envelope"></i>skyevents24@gmail.com</span>
            </div>
             <div class="col-sm-2">
                <h6>Links</h6>
                <span>AboutUs</span><br>
                <span>Events</span><br>
                <span>Login</span><br>
                <span>Register</span><br>
            </div> 
            <div class="col-sm-2">
                <h6>Our Business</h6>
                <span>Wedding</span>
                <span>Business Events</span><br>
                <span>Birthdays</span>
                <span>Cultural Events</span><br>
                <span>BabyShower</span><br>
                <span>Corporate Events</span><br>
                
            </div> 
            <%-- Add social media icons here --%>
            <div class="col-auto social-icons">
            <h6>Follow Us</h6>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
            </div>
            
        </div>
    </div> 
</footer>

    <%-- <div class="col-sm-3">
                    <h6>Resources</h6>
                    <span>login</span>
                    <span>learn</span>
                </div>--%>
               <%--  <div class="col-sm-3">
                    <h6>subscribe us</h6>
                    <span>subscribe for more updates</span>
                    <input type="text" class="font-weight-bold form-control" placeholder="enter your email">
                    <button type="submit" class="font-weight-bold btn btn-outline-danger bnt-sm float-left">subscribe</button>
                </div>--%>

    <footer class="copyright-footer">
    <div class="container">
        <div class="row align-items-center">
        
            <div class="col">
            <center>
                <p style="margin-bottom: 0;">&copy; SKY EVENTS & ENTERTAINMENTS PVT.LTD 2024, All right reserved. | Privacy Policy</p>
                </center>
            </div>
            
        </div>
    </div>
</footer>
</body> 
</html>
