<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style>
 .main {
           /* background-color: white;*/
            min-height: calc(100vh - 150px); /* Adjust the height based on the header and footer */
            padding-top: 50px; /* Adjust the top padding */
            padding-bottom: 50px; /* Adjust the bottom padding */
            margin-top: 50px;
        }
          .event {
         margin: 10px auto 0; /* Adjust top margin */
        background-color: ashgrey; /* Change background color */
        padding: 30px; /* Add padding for spacing */
        border-radius: 10px;
    }
    
    .event-content {
        box-shadow: 10px 10px 10px -10px rgba(0, 0, 0, 0.3) , 
            inset 10px 10px 10px -10px rgba(0, 0, 0, 0.3);
        padding: 10px;
        cursor: pointer;
        background: white !important;
        position: relative; /* Set position to relative */
        overflow: hidden;
        border-radius:20px;
    }
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
}
 .event img {
        width: 700px; /* Set the width */
        height: 300px; /* Set the height */
    }
.event img:hover{
    transform: scale(1.1);
    
    cursor: pointer;
}
.event .col-sm-5{
    margin-bottom: 30px !important;
    
}
.main{
        background-color:white;
        }
.display-4{
font-size:22px;
}
</style>
</head>

<body>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
    
     <%@include file="Header.jsp"%> 
    
    <div class="main">
    
    
    <!-- container event 1 -->
    
    <div class="container event">   
    <div class="row justify-content-center text-center">  
        <div class="col-sm-12 justify-content-center text-center">
            <div class="event-content">
                <div class="img">
                    <div class="row">
                        <div class="col">
                            <img src="images/wedbook.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/wedbook2.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/wedbook3.jpg" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
                <h4>WEDDING</h4>
                <span>At sky events, we understand that your wedding day is one of the most special moments in your life. With our expert wedding event management services, we transform your dreams into reality, ensuring every detail is meticulously planned and flawlessly executed. From enchanting venues to exquisite decor, personalized catering to seamless coordination, our dedicated team works tirelessly to create a magical and unforgettable experience for you and your loved ones. Let us handle the logistics while you focus on creating cherished memories that last a lifetime.. </span><br>
                <a href="Booking.jsp?event_category=wedding">BOOK</a>
            </div>
        </div>
    </div>
</div>

    
    <!-- container event 2 -->
    
    <div class="container event">   
    <div class="row justify-content-center text-center">  
        <div class="col-sm-12 justify-content-center text-center">
            <div class="event-content">
                <div class="img">
                    <div class="row">
                        <div class="col">
                            <img src="images/birthdayimg1.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/birthdayimg2.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/birthday.jpg" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
                <h4>BIRTHDAY</h4>
               <span>Make your next birthday celebration an affair to remember with sky events. Whether it's a milestone
     birthday or an intimate gathering with friends and family, our team specializes in crafting bespoke birthday experiences
      tailored to your unique style and preferences. From themed decor to interactive entertainment, delectable cuisine to 
      personalized touches, we go above and beyond to ensure your special day is filled with joy, laughter, and unforgettable
       moments. Let us take the stress out of planning so you can simply enjoy being the guest of honor. </span><br>
                <a href="Booking.jsp?event_category=birthday">BOOK</a>
            </div>
        </div>
    </div>
</div>

    
    <!-- container event 3 -->
    
    <div class="container event">   
    <div class="row justify-content-center text-center">  
        <div class="col-sm-12 justify-content-center text-center">
            <div class="event-content">
                <div class="img">
                    <div class="row">
                        <div class="col">
                            <img src="images/babyshowerimg1.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/babyshowerimg2.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/babyshower.jpg" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
                <h4>BABYSHOWER</h4>
                <span>Celebrate the joyous anticipation of a new arrival with a baby shower that's as special as the little one on the way.At sky events, we specialize in creating heartwarming and unforgettable baby shower experiences that bring togetherfamily and friends to shower the parents-to-be with love and blessings. From charming themes to adorable decor, fun gamesto delectable treats, our dedicated team ensures every detail is thoughtfully curated to reflect the excitement of this preciousmilestone. Let us take care of the planning so you can cherish the moments and create cherished memories with your loved ones.  </span><br>
                <a href="Booking.jsp?event_category=babyshower">BOOK</a>
            </div>
        </div>
    </div>
</div>


<!-- CONTAINER 4 -->
    
    <div class="container event">   
    <div class="row justify-content-center text-center">  
        <div class="col-sm-12 justify-content-center text-center">
            <div class="event-content">
                <div class="img">
                    <div class="row">
                        <div class="col">
                            <img src="images/business.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/businessimg2.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/businessimg1.jpg" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
                <h4>BUSINESS</h4>
                <span>When it comes to hosting successful business events, precision and professionalism are paramount. At sky events,we specialize in creating tailored solutions for your corporate needs, whether it's a networking luncheon, executive retreat, orindustry conference. Our experienced team collaborates closely with you to understand your objectives, develop strategic plans,and execute flawlessly from start to finish. With our attention to detail and commitment to excellence, you can trust us todeliver a seamless and impactful event that leaves a lasting impression on your clients, partners, and stakeholders. 
 </span><br>
                <a href="Booking.jsp?event_category=business">BOOK</a>
            </div>
        </div>
    </div>
</div>
    
    
    <!-- CONTAINER 5 -->
    
    <div class="container event">   
    <div class="row justify-content-center text-center">  
        <div class="col-sm-12 justify-content-center text-center">
            <div class="event-content">
                <div class="img">
                    <div class="row">
                        <div class="col">
                            <img src="images/culturalimg1.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/culturalimg2.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/cultural.jpg" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
                <h4>CULTURAL</h4>
                <span>Immerse yourself in the vibrant tapestry of diverse cultures with sky events. From traditional festivals to heritagecelebrations, our cultural event management services are designed to showcase the richness and beauty of different traditions andcustoms. Whether it's a multicultural fair, ethnic music and dance performances, or culinary experiences from around the world, ourteam is passionate about creating immersive and inclusive events that foster cross-cultural understanding and appreciation. Let ushelp you create meaningful connections and unforgettable experiences that celebrate the diversity of our global community.
 </span><br>
                <a href="Booking.jsp?event_category=cultural">BOOK</a>
            </div>
        </div>
    </div>
</div>
    
    
    <!-- CONTAINER 6 -->
    <div class="container event">   
    <div class="row justify-content-center text-center">  
        <div class="col-sm-12 justify-content-center text-center">
            <div class="event-content">
                <div class="img">
                    <div class="row">
                        <div class="col">
                            <img src="images/corporate.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/corporateimg2.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col">
                            <img src="images/corporateimg1.jpg" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
                <h4>CORPORATE</h4>
                <span>Elevate your corporate gatherings to new heights with sky events. As experts in corporate event management, we understandthe importance of making a lasting impression on clients, partners, and employees. Whether it's a conference, seminar, product launch,or team-building retreat, our team is committed to delivering seamless and impactful events that align with your business objectivesand reflect your brand's identity. From venue selection to audio-visual production, attendee management to post-event analytics,we handle every aspect with precision and professionalism, allowing you to focus on achieving your business goals. </span><br>
                <a href="Booking.jsp?event_category=corporate">BOOK</a>
            </div>
        </div>
    </div>
</div>
    
   </div><!-- main div close -->
   
    
<footer>
<%@include file="Footer.jsp"%> 
</footer>
</body>
</html>




 