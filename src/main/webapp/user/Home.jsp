<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<link rel="stylesheet"  href="style.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <style>@import url('https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300;400&display=swap');
   *{
        margin: 0;
        padding: 0;
    }
body{
  background:#dcdcdc;
  }
  .section-padding{
  padding:100px 0;
  }
  .carousel-item{
  height: 100vh;
  min-height: 300px;
  }
  .carousel-caption{
  bottom: 220px;
  z-index: 2;
  }
  .carousel-caption h5{
  font-size: 55px;
  text-transform:uppercase;
  margin-top: 25px;
  font-weight: 500;
  }
  .carousel-caption p{
  width: 60%;
  font-size: 18px;
  margin: auto;
  line-height: 1.9;

  }
  .carousel-inner::before{
  content: '';
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background: rgba(0,0,0,0.6);
  z-index: 1;
  }
  .w-100{
height: 100vh;
}
@media only screen and (min-width: 768px) and (max-width: 991px){
.carousel-caption{
bottom: 370px;
}
.carousel-caption p{
width: 100%;
}
}
@media only screen and (max-width: 767px){
.carousel-caption{
 bottom: 125px;
 }
 .carousel-caption h5{
 padding: 10px 15px;
 font-size: 17px;
 }
 .carousel-caption a{
 padding: 10px 15px;
 }
 .carousel-caption p{
 width: 100%;
 line-height: 1.6;
 font-size: 12px;
 }
}

.container {
  width: 100%;
  min-height: 100vh;
  padding: 2%;
}

.search-bar {
  width: 100%;
  max-width: 500px;
  background: white;
  display: flex;
  align-items: center;
  border-radius: 30px; /* Reduced border radius */
  padding: 10px; /* Adjusted padding */
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Normal box shadow */
}

.search-bar input {
  background: white;
  flex: 1;
  border: 0;
  outline: none;
  padding: 10px; /* Adjusted padding */
  font-size: 14px;
  color: black;
  backdrop-filter: blur(4px) saturate(180%);
}


::placeholder {
  color: Black;
}

.search-bar button {
  border: 0;
  border-radius: 50%;
  width: 38px; /* Adjusted button width */
  height: 38px; /* Adjusted button height */
  background: #ffd300;
}

footer{
width: 100%;
position: absolute;
button: 0;
background: linear-gradient(to right, #000000, #333333);
color: #fff;
padding: 100px 0 30px;
border-top-left-radius: 125px;
font-size: 13px;
line-height: 20px;
}

.row{
width: 85%;
margin: auto;
display: flex;
flex-wrap: wrap;
align-items: flex-start;
justify-content: space-between;
}

.col{
flex-basis: 25%;
padding: 10px;
}

.col:nth-child(2), .col:nth-child(3){
flex-basis: 20%;
}

.logo{
width: 80px;
margin-bottom: 30px;
font-size: 30px;
}

.col h3{
width: fit-content;
margin-bottom: 15px;
position: relative;
}

.email-id{
width: fit-content;
border-bottom: 1px solid #ccc;
margin: 20px 0;
}
.row ul li{
margin-bottom: 10px;
}

.row ul li a{
text-decoration: none;
color: #fff;
}

form{
padding-bottom: 15px;
display: flex;
align-items: center;
justify-content: space-between;
border-bottom: 1px solid #ccc;
margin-bottom: 50px;
}

form .bi{
font-size: 18px;
margin-right: 10px;
}

form input{
width: 100;
background: transparent;
color: #ccc;
border: 0;
outline: none;
}

form button{
background: transparent;
border: 0;
outline: none;
cursor: pointer;
}

form button .bi{
font-size: 16px;
color: #fff;
}

form  ::placeholder{
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

.hr{
width: 90%;
border: 0;
border-bottom: 1px solid #ccc;
margin: 20px auto;
}

.copyright{
text-align: center;
}

.underline{
width: 100%;
height: 5px;
background: #767676;
border-radius: 3px;
position: absolute;
top: 30px;
left: 0;
overflow: hidden;
}

.underline span{
width: 15px;
height: 100%;
background: #fff;
border-radius: 3px;
position: absolute;
top: 0;
left: 10px;
animation: moving 2s linear infinite;
}

@keyframes moving{
0%{
left: -15px;
}
100%{
left: 100%;
}
}

@media (max-width: 700px){
footer{
bottom: unset;
}
.col{
flex-basis: 100%;
}

.col:nth-child(2), .col:nth-child(3){
flex-basis: 100%;
}
}

@media only screen and (max-width: 1280px) and (min-height: 551px){
    .carousel-caption{
    top: 50px;
}
}

/* Added CSS for card shadow and image hover effect */
.card {
  transition: transform 0.2s, box-shadow 0.2s;
}

.card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 20px rgba(0,0,0,0.1);
}

.card-img-hover:hover {
  transform: scale(1.05);
}

  </style>
  </head>
  <body>
    <!-- Navbar/Banner -->
   <%@include file="navbar1.jsp" %>
   <div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/New2.webp" class="d-block w-100" alt="...">
      <div class="carousel-caption">
        <h5>"Navigate Student Living: Your Accommodation Awaits, Just a Click Away!"</h5>
        <p>Easily find student accommodation online with our accessible web app.</p>
          <button type="button" class="btn btn-warning">Learn More</button> 
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/new1.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption">
        <h5>"Discover Your Student Sanctuary: Find Your Perfect Pad with Ease!"</h5>
        <p>Explore our user-friendly app to discover the perfect student sanctuary, 
        making finding your ideal pad a simple and enjoyable experience.</p>
          <button type="button" class="btn btn-warning">Learn More</button> 
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/new3.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption">
        <h5>"Unlock Your Student Experience: Explore, Compare, and Secure Your Ideal Digs Today!"</h5>
        <p>Our app empowers students to explore, compare, and secure their ideal accommodation swiftly,
         enhancing their overall student experience.</p>
         <button type="button" class="btn btn-warning">Learn More</button> 
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

   <!-- Search-bar -->
 <div class="container"> 
  <form action="" class="search-bar mb-4"> <!-- Added mb-4 class for margin bottom -->
    <input type="text" placeholder="Search" name="search">
    <button type="submit"><i class="bi bi-search font-weight-bold fs-4 text-white"></i></button>
  </form>

  <div class="d-flex justify-content-between">
    <div class="card shadow" style="width: 18rem;"> <!-- Added shadow class for card shadow -->
      <img src="image/blossom4.jpg" class="card-img-top card-img-hover" alt="..."> <!-- Added card-img-hover class -->
      <div class="card-body">
       <p class="card-text">Flat</p>
        <h4 class="card-title bi bi-currency-rupee">6500 | 1300 sqft</h4>
        <p class="card-text">Mandi, New Delhi</p>
        <p class="card-text">Ready To Move</p>
        <a href="#" class="btn btn-warning">View Details</a>
      </div>
    </div>

    <div class="card shadow" style="width: 18rem;"> <!-- Added shadow class for card shadow -->
      <img src="image/2.jpeg" class="card-img-top card-img-hover" alt="..."> <!-- Added card-img-hover class -->
      <div class="card-body">
       <p class="card-text">Sharing Basis</p>
      <h4 class="card-title bi bi-currency-rupee">4500 | 850 sqft</h4>
        <p class="card-text">Rajouri Garden, New Delhi</p>
        <p class="card-text">Ready To Move</p>
        <a href="#" class="btn btn-warning">View Details</a>
      </div>
    </div>

    <div class="card shadow" style="width: 18rem;"> <!-- Added shadow class for card shadow -->
      <img src="image/104.jpg" class="card-img-top card-img-hover" alt="..."> <!-- Added card-img-hover class -->
      <div class="card-body">
      <p class="card-text">Hostel</p>
        <h4 class="card-title bi bi-currency-rupee">8500 | 1250 sqft</h4>
        <p class="card-text">Saket, Indore</p>
        <p class="card-text">Ready To Move</p>
        <a href="#" class="btn btn-warning">View Details</a>
      </div>
    </div>
  </div>
</div>



<!-- footer -->
<footer>
<div class="row">
<div class="col"><div class="logo"><span class="logo text-warning">Uni<span class="text-white">Stay</span></span></div>
<p>UniStay: User-friendly, high-quality platform, exceeding expectations,
 innovative features, customer satisfaction, new industry standards.</p>
</div>
<div class="col">
<h3>Office <div class="underline"><span></span></div></h3>
<p>123 Main Street, Maple Road
Anytown,Anystate 12345
Country
</p>
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
<p class="copyright text-white">
 UniStay &copy; 2024 - All Rights Reserved
 </p>
</footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>