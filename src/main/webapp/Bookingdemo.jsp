
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      margin: 0;
      padding: 0;
    }
    .bg1 {
      background-image: url('https://wallpapercave.com/wp/wp10715825.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .login-message {
      font-size: 24px;
      font-weight: bold;
      text-align: center;
      color: black;
      margin-bottom: 20px;
    }
    .login-link {
      font-size: 18px;
    }
    .container{
    background-color:beige;
    }
  </style>
</head>
<body>
<% if (session.getAttribute("uname") == null) { %> 
<div class="bg1">
  <div class="text-center">
    <p class="login-message mb-4">PLEASE LOGIN/REGISTER BEFORE BOOKING ANY EVENT</p>
    <a href="Login.jsp" class="btn btn-primary btn-lg">LOGIN</a>
  </div>
</div>
<% } else { %> 
<div class="container">
  <h2 class="mt-5 mb-4">Event Booking Form</h2>
  <form>
    <!-- Personal Information -->
    <div class="form-group">
      <label for="fullName">Full Name</label>
      <input type="text" class="form-control" id="fullName" placeholder="Enter your full name" required>
    </div>
    <div class="form-group">
      <label for="email">Email Address</label>
      <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
    </div>
    <div class="form-group">
      <label for="phone">Phone Number</label>
      <input type="tel" class="form-control" id="phone" placeholder="Enter your phone number" required>
    </div>
    
    <!-- Event Details -->
    <div class="form-group">
      <label for="eventName">Event Name</label>
      <input type="text" class="form-control" id="eventName" placeholder="Enter the event name" readonly>
    </div>
    <div class="form-group">
      <label for="eventDate">Date of the Event</label>
      <input type="date" class="form-control" id="eventDate" required>
    </div>
    <div class="form-group">
      <label for="eventTime">Time of the Event</label>
      <input type="time" class="form-control" id="eventTime" required>
    </div>
    <div class="form-group">
      <label for="venue">Venue or Location</label>
      <input type="text" class="form-control" id="venue" placeholder="Enter the venue or location" required>
    </div>
    
    <!-- Ticket/Reservation Information -->
    <div class="form-group">
      <label for="numTickets">Number of Tickets/Seats</label>
      <input type="number" class="form-control" id="numTickets" required>
    </div>
    <div class="form-group">
      <label for="ticketType">Ticket/Seat Type</label>
      <select class="form-control" id="ticketType" required>
        <option value="">Select Ticket/Seat Type</option>
        <option value="General Admission">General Admission</option>
        <option value="VIP">VIP</option>
        <option value="Student">Student</option>
      </select>
    </div>
    <!--  <div class="form-group">
      <label for="specialRequests">Special Requests</label>
      <textarea class="form-control" id="specialRequests" rows="3" placeholder="Enter any special requests"></textarea>
    </div>-->
    
    <!-- Payment Information -->
    <div class="form-group">
      <label for="creditCard">Credit Card Number</label>
      <input type="text" class="form-control" id="creditCard" placeholder="Enter your credit card number" required>
    </div>
    <!-- Other payment fields can be added here -->
    
    <!-- Confirmation/Agreement -->
    <div class="form-group form-check">
      <input type="checkbox" class="form-check-input" id="termsCheck" required>
      <label class="form-check-label" for="termsCheck">I agree to the terms and conditions</label>
    </div>
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
  
 <%} %>
  <!-- Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
</body>
</html>

