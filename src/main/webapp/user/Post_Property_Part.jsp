<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>UniStay</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet"  href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300;400&display=swap');

        * {
            margin: 0;
            padding: 0;
        }

        body {
            background: #dcdcdc;
            padding-top: 80px; /* Add padding-top to body to compensate for form's position */
        }

        .form-container {
           padding: 20px; /* Optional: Add padding for better spacing */
            position: absolute;
            left: 0;
            top: 80px;
        }

          form {
            background-color: rgba(255, 255, 255, 0.5); /* Transparent background for the form */
            padding: 20px; /* Optional: Add padding for better spacing */
        }
        
    </style>
</head>
<body>
<!-- Navbar/Banner -->
<%@include file="navbar2.jsp" %>
<div class="form-container" id="form-container">
    <form>
        <h3>Sell or Rent your Property</h3>
        <h5>You are posting this property for <span>Free</span></h5>
        <br>
        <h6>Personal Details</h6>
        <div class="Per-Det">
            <p>I am</p>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                    Owner
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                <label class="form-check-label" for="flexRadioDefault2">
                    Agent
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
                <label class="form-check-label" for="flexRadioDefault3">
                    Builder
                </label>
            </div>
            <input type="text" name="username" class="input-field" placeholder="Enter your Name" required>
                <input type="text" name="mobileno" class="input-field" placeholder="Mobile Number" required>
                <input type="email" name="email" class="input-field" placeholder="Email" required>
        </div>
        <br>
        
        <h6>Property Details</h6> 
           <div class="Pro-Det">
            <p>for</p>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                    Sale
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                <label class="form-check-label" for="flexRadioDefault2">
                  Rent/ Lease
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
                <label class="form-check-label" for="flexRadioDefault3">
                    PG/Hostel
                </label>
            </div>
            <div class="dropdown-center">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Select Property type
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Flat/Apartment</a></li>
    <li><a class="dropdown-item" href="#">Full House</a></li>
    <li><a class="dropdown-item" href="#">Sharing Basis</a></li>
  </ul>
</div>
<br>
</div>

      <h6>Property Location</h6>  
        <div class="Pro-Loc">
            <input type="text" name="city" class="input-field" placeholder="Enter City" required>
                <input type="text" name="locality" class="input-field" placeholder="Enter Locality" required>
        </div>
    
    <br>    
         <h6>Property Features</h6>  
        <div class="Pro-Loc">
            <input type="text" name="city" class="input-field" placeholder="Enter City" required>
                <input type="text" name="locality" class="input-field" placeholder="Enter Locality" required>
        </div>
    </form>

</div>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
