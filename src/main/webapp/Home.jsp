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
  background:f1fbff;
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
   
  <div> 
 
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>