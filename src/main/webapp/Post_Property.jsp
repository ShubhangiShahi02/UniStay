<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Home Page</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300;400&display=swap');
    * {
      margin: 0;
      padding: 0;
    }
    
    body {
      background: #dcdcdc;
    }
    
    .main {
      display: flex;
      justify-content: space-between;
    }
    
    .content {
      flex: 1;
      margin-right: 20px;
      display: flex;
      align-items: flex-start; /* Align items to the start of the cross axis */
      margin-top: 80px;
      flex-wrap: wrap;
    }
    
    .image-wrapper {
      flex: 0 0 auto;
      margin-right: 20px;
    }
    
    .image-wrapper img {
      max-width: 100%;
    }
    
    .text-container {
      flex: 1;
      margin-bottom: 20px;
    }
    
    .text-container h2 {
      margin: 0;
      font-size: 24px;
      font-weight: bold;
    }
    
    .bullet {
      list-style-type: none;
      padding: 0;
    }
    
    .points {
      margin-top: 10px;
    }
    
    .points i {
      color: green;
      margin-right: 5px;
    }
    
    .check input[type="checkbox"] {
      display: none;
    }
    
    .check label.btn {
      border: 2px solid #ccc;
      border-radius: 10px;
      padding: 10px;
      cursor: pointer;
    }
    
    .check input[type="checkbox"]:checked + label.btn {
      border-color: #ffd300;
    }
    
    .check {
      width: 100%;
      box-sizing: border-box;
      margin-left: 500px;
      flex: 0 0 auto;
    }
    
    footer {
      width: 100%;
      background: linear-gradient(to right, #000000, #333333);
      color: #fff;
      padding: 100px 0 30px;
      border-top-left-radius: 125px;
      font-size: 13px;
      line-height: 20px;
      position: relative; /* Changed from absolute to relative */
    }
    
    .row {
      width: 85%;
      margin: auto;
      display: flex;
      flex-wrap: wrap;
      align-items: flex-start;
      justify-content: space-between;
    }
    
    .col {
      flex-basis: 25%;
      padding: 10px;
    }
    
    .col:nth-child(2),
    .col:nth-child(3) {
      flex-basis: 20%;
    }
    
    .logo {
      width: 80px;
      margin-bottom: 30px;
      font-size: 30px;
    }
    
    .col h3 {
      width: fit-content;
      margin-bottom: 15px;
      position: relative;
    }
    
    .email-id {
      width: fit-content;
      border-bottom: 1px solid #ccc;
      margin: 20px 0;
    }
    
    .row ul li {
      margin-bottom: 10px;
    }
    
    .row ul li a {
      text-decoration: none;
      color: #fff;
    }
    
    .col form {
      padding-bottom: 15px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      border-bottom: 1px solid #ccc;
      margin-bottom: 50px;
    }
    
    .col form .bi {
      font-size: 18px;
      margin-right: 10px;
    }
    
    .col form input {
      width: 100%;
      background: transparent;
      color: #ccc;
      border: 0;
      outline: none;
    }
    
    .col form button {
      background: transparent;
      border: 0;
      outline: none;
      cursor: pointer;
    }
    
    .col form button .bi {
      font-size: 16px;
      color: #fff;
    }
    
    .col form ::placeholder {
      color: #ccc;
    }
    
    .social-icons i {
      display: inline-block;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      text-align: center;
      line-height: 40px;
      font-size: 20px;
      color: #000;
      background: #fff;
      margin-right: 15px;
      cursor: pointer;
    }
    
    .hr {
      width: 90%;
      border: 0;
      border-bottom: 1px solid #ccc;
      margin: 20px auto;
    }
    
    .copyright {
      text-align: center;
    }
    
    .underline {
      width: 100%;
      height: 5px;
      background: #767676;
      border-radius: 3px;
      position: absolute;
      top: 30px;
      left: 0;
      overflow: hidden;
    }
    
    .underline span {
      width: 15px;
      height: 100%;
      background: #fff;
      border-radius: 3px;
      position: absolute;
      top: 0;
      left: 10px;
      animation: moving 2s linear infinite;
    }
    
    @keyframes moving {
      0% {
        left: -15px;
      }
      100% {
        left: 100%;
      }
    }
    
    @media (max-width: 700px) {
      footer {
        position: relative; /* Changed from absolute to relative */
        bottom: unset;
      }
      .col {
        flex-basis: 100%;
      }
      .col:nth-child(2),
      .col:nth-child(3) {
        flex-basis: 100%;
      }
    }
    
    .content img {
      width: 100%; /* Adjusted to take full width */
      height: auto;
    }
    
    @media (max-width: 700px) {
      .content {
        flex-direction: column; /* Change flex direction for smaller screens */
        align-items: center; /* Center items vertically */
      }
    }
    
     .content img {
width: 400px;
height: auto;
}
  </style>
</head>
<body>
  <!-- Navbar/Banner -->
  <%@include file="navbar2.jsp" %>
  
  <div class="main">
    <div class="content">
      <div class="image-wrapper">
        <img src="image/3d-a-man-is-working-at-home-using-a-laptop-png.webp" alt="" class="img-fluid">
      </div>
      <div class="text-container">
        <h2>"Empower Your Rental Business: <br>List, Lease, and Prosper with Us!<br>PGs, Hostel, and Rooms Welcomed."</h2>
        <ul class="bullet">
          <li class="points"><i class="bi bi-check-circle"></i>Expand your rental portfolio with ease.</li>
          <li class="points"><i class="bi bi-check-circle"></i>Connect with a wide range of tenants.</li>
          <li class="points"><i class="bi bi-check-circle"></i>Manage listings, leases, and inquiries efficiently.</li>
        </ul>
        <!-- Form moved here -->
        <form class="check">
          <h3>Let's get you started</h3>
          <h5>You are:</h5>
          <input type="checkbox" class="btn-check" id="owner" data-group="you_are" autocomplete="off" onchange="toggleCheck(this, 'you_are')">
          <label class="btn" for="owner">Owner</label>
          <input type="checkbox" class="btn-check" id="agent" data-group="you_are" checked autocomplete="off" onchange="toggleCheck(this, 'you_are')">
          <label class="btn" for="agent">Agent</label>
          <input type="checkbox" class="btn-check" id="builder" data-group="you_are" autocomplete="off" onchange="toggleCheck(this, 'you_are')">
          <label class="btn" for="builder">Builder</label>
          <h5>You are here to:</h5>
          <input type="checkbox" class="btn-check" id="sell" data-group="you_are_here_to" autocomplete="off" onchange="toggleCheck(this, 'you_are_here_to')">
          <label class="btn" for="sell">Sell</label>
          <input type="checkbox" class="btn-check" id="rent" data-group="you_are_here_to" checked autocomplete="off" onchange="toggleCheck(this, 'you_are_here_to')">
          <label class="btn" for="rent">Rent</label>
          <input type="checkbox" class="btn-check" id="pg" data-group="you_are_here_to" autocomplete="off" onchange="toggleCheck(this, 'you_are_here_to')">
          <label class="btn" for="pg">List as PG</label>
          <h5>Your Email-id:</h5>
          <input type="email" name="email" class="input-field" placeholder="Email" required>
          <button type="button" class="btn btn-warning">Start Now</button>
        </form>
      </div>
    </div>
  </div>
  
  <!-- footer -->
  <footer>
    <div class="row">
      <div class="col">
        <div class="logo text-warning">Uni<span class="text-white">Stay</span></div>
        <p>UniStay: User-friendly, high-quality platform, exceeding expectations, innovative features, customer satisfaction, new industry standards.</p>
      </div>
      <div class="col">
        <h3>Office <div class="underline"><span></span></div></h3>
        <p>123 Main Street, Maple Road<br>Anytown, Anystate 12345<br>Country</p>
        <p class="email-id">unistay@gmail.com</p>
        <h4>+91 98765-54321</h4>
      </div>
      <div class="col">
        <h3 class="">Links<div class="underline"><span></span></div></h3>
        <ul>
          <li><a href="Home.jsp">Home</a></li>
          <li><a href="index.jsp\#about">About us</a></li>
          <li><a href="index.jsp\#services">Services</a></li>
          <li><a href="index.jsp\#portfolio">Portfolio</a></li>
          <li><a href="index.jsp\#contact">Contact</a></li>
        </ul>
      </div>
      <div class="col">
        <h3>Newsletter<div class="underline"><span></span></div></h3>
        <form action="" class="bg-transparent">
          <i class="bi bi-envelope"></i>
          <input type="email" placeholder="Enter your email id" required>
          <button type="submit"><i class="bi bi-arrow-right"></i></button>
        </form>
        <div class="social-icons mt-4">
          <i class="bi bi-facebook"></i>
          <i class="bi bi-twitter"></i>
          <i class="bi bi-whatsapp"></i>
          <i class="bi bi-pinterest"></i>
        </div>
      </div>
    </div>
    <hr class="hr">
    <p class="copyright text-white">UniStay &copy; 2024 - All Rights Reserved</p>
  </footer>

  <script>
    function toggleCheck(checkbox, group) {
      if (checkbox.checked) {
        var checkboxes = document.querySelectorAll('.btn-check[data-group="' + group + '"]');
        checkboxes.forEach(function(item) {
          if (item !== checkbox) {
            item.checked = false;
          }
        });
      }
    }
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>