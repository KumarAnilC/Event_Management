<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About Us - Sky Events</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    /* Custom styles */
    body {
      background-color: white; /* Beige background color for the entire page */
    }
    .footer {
      background-color: #343a40; /* Dark background color for the footer */
      color: white; /* White text color for footer text */
      padding: 10px 0; /* Padding for better spacing */
      text-align: center; /* Center align text */
    }
    .container {
    background-color:white;
      margin-top: 20px; /* Adjusted margin top for better spacing */
      padding: 20px; /* Added padding to container */
    }
    .about-us {
      margin-top: 100px; /* Adjusted margin top for about us */
    }
    .about-us, .our-mission {
      margin-bottom: 50px; /* Added margin to separate sections */
    }
    .container1 {
      margin-top: 20px;
      color: white;
    }
  </style>
</head>
<body>
<!-- <div class="header"> -->

  <header>
    <%@include file="Header.jsp"%> 
  </header>
<!--  </div>-->
  <div class="container">
    <div class="about-us">
      <h1 class="text-center mb-4">ABOUT US</h1>
      <hr>
      <div class="row mb-4">
        <div class="col-md-6">
          <img src="images/weddingvenue2.jpg" height="200px" width="550px" class="img-fluid" alt="Sky Events">
        </div>
        <div class="col-md-6">
          <p>Sky Events is a leading event management company that specializes in organizing memorable and successful events. With years of experience in the industry, we have built a reputation for excellence, creativity, and professionalism. Our team consists of highly skilled professionals who are passionate about creating extraordinary experiences for our clients. From corporate events to weddings and everything in between, we handle every detail with precision and care.</p>
           <p>Our team consists of highly skilled professionals who are passionate about creating extraordinary experiences for our clients. From corporate events to weddings and everything in between, we handle every detail with precision and care.</p>
           <p>Customer satisfaction is our top priority, and we strive to go above and beyond to ensure that each event is executed flawlessly. Whether it's a small gathering or a large-scale production, we approach every project with dedication and attention to detail.</p>
           <p>We believe that every event is an opportunity to create lasting memories. Our goal is to craft events that not only meet the objectives of our clients but also leave a lasting impression on all attendees. Whether it's a grand celebration or an intimate gathering, we strive to capture the essence of the moment and turn it into cherished memories.</p>
      <!--  <p>At Sky Events, we understand the importance of creating memorable experiences. That's why we go above and beyond to ensure that every aspect of the event is meticulously planned and executed. From conceptualization to execution, our team works tirelessly to transform visions into unforgettable realities.</p>-->
        </div>
      </div>
      <!-- Horizontal line added -->
    </div>

    <!-- Our Mission Section -->
    <div class="our-mission">
      <h2 class="text-center mb-4">OUR MISSION</h2>
      <hr> <!-- Horizontal line added -->
      <div class="row">
        <div class="col-md-12">
          <p class="text-center">At SkyEvents, our mission is to exceed our clients' expectations by delivering exceptional events that leave a lasting impression. We strive to provide innovative solutions, personalized service, and attention to detail in every aspect of event planning and execution</p>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer class="footer">
  
    <div class="container1">
      <span>© SKY EVENTS & ENTERTAINMENTS PVT.LTD 2024, All rights reserved. | Privacy Policy</span>
    </div>
  </footer>

  <!-- Bootstrap scripts -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


 
