<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Management</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Grey+Qo&display=swap" rel="stylesheet">


    <style>
   
    /* header */
     .header {
            margin-bottom: 50px; /* Add margin to the bottom of the header */
            padding: 0;
            height: 100vh;
            background: url(images/eventbackground.jpg) no-repeat center center;
            background-size: cover;
            position: relative;
            color: #fff;
            text-align: center;
        }

       .header .img-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 2;
        }


        .header .img-content h2 {
            font-weight: bold;
            font-style: italic;
            font-size: 45px;
            margin-bottom: 20px;
        }

        .header .img-content span {
            font-weight: 500;
            font-size: 20px;
            font-style: italic;
            letter-spacing: 0.2px;
        }

        /* Main section */
        .main {
            background-color: beige;
            min-height: calc(100vh - 150px); /* Adjust the height based on the header and footer */
            padding-top: 10px; /* Adjust the top padding */
            padding-bottom: 50px; /* Adjust the bottom padding */
            margin-top: 30px;
        }

        /* "BOOK NOW" button */
        .book-now {
            display: inline-block;
            padding: 10px 10px;
            background-color: grey;
            color: #fff;
            border-radius: 5px;
            text-decoration: none;
        }
        
        
    .event {
         margin: 10px auto 0; /* Adjust top margin */
        background-color: white; /* Change background color */
        padding: 30px; /* Add padding for spacing */
        border-radius: 10px;
         margin-top: 10px;
    }
    
   /* .event-content {
        box-shadow: 10px 10px 10px -10px rgba(0, 0, 0, 0.3) , 
            inset 10px 10px 10px -10px rgba(0, 0, 0, 0.3);
        padding: 10px;
        cursor: pointer;
        background: white !important;
        position: relative; /* Set position to relative */
        overflow: hidden;
        border-radius: 20px;
    }*/
    .event-content h4{
    font-weight: bold;
    font-style: italic;
    font-size: 20px;
    margin-bottom: 5px;
}
.event-content span{
    font-style: italic;
    font-size: 15px;
}
.event-content a{
    text-transform: uppercase;
    font-weight: bold;
    margin-top: 10px !important;
}
.event img{
    transition: 0.6s;
    width: 100%; /* Make all images the same size */
    height: auto; /* Maintain aspect ratio */
    border-radius:20px;
}
 .event img {
        width: 700px; /* Set the width */
       /* height: 300px; Set the height */
        
    height: 70%; /* Make the image fill the height of its container */
    object-fit: cover; /* Maintain aspect ratio while covering the container */

    }
.event img:hover{
    transform: scale(1.1);
    
    cursor: pointer;
}
.event .col-sm-4{
    margin-bottom: 10px !important;
    
}
.display-4{
font-size:22px;
}
  .sub {
            font-size: 22px;
            font-color:darkblue;
        }

        .tag {
            font-style: italic;
            font-size: 18px;
        }
        .main{
        background-color:white;
        }
        
        
        
        
        .event .event-content {
    margin-bottom: 20px; /* Add space between images */
     height: 300px;
}

.event .row {
    margin-bottom: -20px; /* Compensate for negative margins */
}

 
        
        
       .grey-qo-regular {
    font-family: "Grey Qo", cursive;
    font-weight: 1200;
    font-style: normal;
    font-size: 80px;
    margin-top: 55px; /* Adjust the top margin */
    margin-bottom:10px; /* Adjust the bottom margin */
}
.para{
margin-top: 55px; /* Adjust the top margin */
    margin-bottom:10px;
    font-size:19;
}
        
        
</style>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <%@include file="Header.jsp"%> 
    
    <!-- header section -->
    
    <div class="header" id="header">
         <div class="img-content">
             <h2>Best Event Planners In India</h2>
           <!-- <span>
                Event management refers to the process of planning, organizing, executing, and evaluating
                events of various types and scales. Events can range from small gatherings like birthdays
                and weddings to large-scale conferences, trade shows, concerts, and sporting events. Effective
                event management involves coordinating all aspects of an event to ensure its success and meet
                the goals of the organizers and participants.
            </span> -->
           <!--   <div class="navbar-brand center-text">
                <h7>SkyEvents</h7>
                <p class="tagline">"creating memories, one event at a time"</p>
                
            </div>-->
        </div>      
    </div>
   
    
    
    <!-- paragraph below image  -->
     <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 text-center">
                    <h1 class="display-4">WELCOME TO SKY EVENTS</h1>
                    <p class="sub">We Plan Your Dream Destination Weddings and Events</p>
                    <p class="tag">Delivering with Passion</p>
                    <a href="Events.jsp" class="book-now">BOOK NOW</a>
                </div>
            </div>
        </div>
      
      
    <!--   <div class="para text-center">
      <p>Sky Events is a leading event management company that specializes in organizing memorable and successful events. With years of experience in the industry, we have built a reputation for excellence, creativity, and professionalism. Our team consists of highly skilled professionals who are passionate about creating extraordinary experiences for our clients. From corporate events to weddings and everything in between, we handle every detail with precision and care.</p>
      </div> -->
   
   
    <div class="grey-qo-regular">
    <hr>
    <center>Our Gallery</center>
    <hr>
    </div>
    
    
    <!--<hr>
      main div -->
      
    <div class="main">
    <!-- container event 1 -->
    
<div class="container event">   
    <div class="row justify-content-center text-center">  
        <div class="col-sm-4">
            <!--  <div class="event-content">-->
                <img src="images/weddingvenue2.jpg" class="img-fluid" alt="" >
                  <h4>WEDDING </h4>
            
        </div>
        <div class="col-sm-4">
            
                <img src="images/birthdayindex.jpg" class="img-fluid" alt="" >
                <h4>BIRTHDAY </h4>           
        </div>
        <div class="col-sm-4">           
                <img src="images/babyshowerimg1.jpg" class="img-fluid" alt="">
                <h4>BABYSHOWER</h4>          
        </div>
        
    </div>    
</div>

<!-- container event 2 -->

<div class="container event">   
    <div class="row justify-content-center text-center">  
        <div class="col-sm-4">
            <!--  <div class="event-content">-->
                 <img src="images/businessimg2.jpg" class="img-fluid" alt="" height=50px>
                <h4>BUSINESS</h4>           
        </div>
        <div class="col-sm-4">         
                 <img src="images/culturalimg2.jpg" class="img-fluid" alt="">
                <h4>CULTURAL </h4>          
        </div>
        <div class="col-sm-4">            
                <img src="images/corporateimg2.jpg" class="img-fluid" alt="">
                <h4>CORPORATE </h4>
            
        </div>
        
    </div>    
</div>

    
   </div><!-- main div close -->
      
    <script>
        // Array of background image URLs
        var backgroundImages = [
            "url(images/eventbackground.jpg)",
            "url(images/backgroundimg2.jpg)" ,
            "url(images/eventbckgrnd.jpg)"
        ];
        // Function to set random background image
        function setRandomBackground() {
            var randomIndex = Math.floor(Math.random() * backgroundImages.length);
            document.getElementById("header").style.backgroundImage = backgroundImages[randomIndex];
        }
        // Call the function initially and then set an interval to change it every 10 seconds (adjust as needed)
        setRandomBackground();
        setInterval(setRandomBackground, 4000); // Change background every 10 seconds
    </script>
      
    <script>
    $(document).scroll(function(){
        var navbarHeight = $(".navbar").height();
        $(".navbar").toggleClass("scroll", $(this).scrollTop() > navbarHeight);
    });
</script>

<%@include file="Footer.jsp"%>  

</body>
</html>
