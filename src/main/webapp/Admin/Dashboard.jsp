<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin | DashBoard</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<link rel="stylesheet"  href="style.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300;400&display=swap');
  *{
  margin: 0;
  padding: 0;
  border: none;
  outline: none;
  box-sizing: border-box;
  }
  
body{
     width: 100%;
     height: 100vh;
     background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(image/New2.webp);
     background-position: center;
     background-size: cover;
     display: flex;
}

.sidebar{
position: stick;
top: 0;
left: 0;
bottom: 0;
width: 110px;
height: 100vh;
padding: 0 1.7rem;
color: #fff;
overflow: hidden;
transition: all 0.5s linear;
 background: rgba(0, 0, 0, 0.2);
 backdrop-filter: blur(5px); 
}

.sidebar:hover{
width: 260px;
transition: 0.5s ease-in-out;
}

.logo{
height: 80px;
padding: 16px;
}

.menu{
height: 85%;
position: realtive;
list-style: none;
padding: 0;
}

.menu li{
padding: 1rem;
margin: 8px 0;
border-radius: 8px;
transition: all 0.5s ease-in-out;
}

.menu li:hover, .active{
background: #e0e0e058;
}

.menu a{
color: #fff;
font-size: 14px;
text-decoration: none;
display: flex;
align-items: center;
gap: 1.2rem;
}

.menu a span{
overflow: hidden;
}

.menu a i{
font-size: 1.2rem;
}

.menu .logout{
margin-top: 80px;
}

.main--content{
position: relative;
width: 100%;
padding: 1rem;
color: #fff;
}

.header--wrapper img{
width: 50px;
height: 50px;
cursor: pointer;
border-radius: 50%;
}

.header--wrapper{
display: flex;
justify-content: space-between;
align-items: center;
flex-wrap: wrap;
 background: rgba(0,0,0,0.3);
 backdrop-filter: blur(5px);
 border-radius: 10px;
 padding: 10px 2rem;
 margin-bottom: 1rem;
}

.header--title{
color: #EBAB00
}

.user-info{
display: flex;
align-items: center;
gap: 1;
}

.search-box{
background: rgb(237, 237, 237);
border-radius: 15px;
color: rgba(113, 99, 186, 255);
display: flex;
align-items: center;
gap: 5px;
padding: 4px 12px;
}

.search-box input{
background: transparent;
padding: 10px;
}

.search-box i{
font-size: 1.2rem;
cursor: pointer;
transition: all 0.5s ease-out;
}

.search-box i:hover{
transform: scale(1.2);
}


  </style>
  </head>
  <body>
  <div class="sidebar">
  <div class="logo"></div>
  <ul class="menu">
  <li class="active">
  <a href="#" >
  <i class="bi bi-speedometer2"></i>
  <span>Dashboard</span>
  </a>
  </li>
  
  <li>
  <a href="#">
  <i class="bi bi-person-fill"></i>
  <span>Profile</span>
  </a>
  </li>
  
  <li>
  <a href="#">
  <i class="bi bi-bar-chart-line-fill"></i>
  <span>Statistics</span>
  </a>
  </li>
  
  <li>
  <a href="#">
 <i class="bi bi-briefcase-fill"></i>
  <span>Careers</span>
  </a>
  </li>
  
  <li>
  <a href="#">
 <i class="bi bi-question-circle-fill"></i>
  <span>FAQ</span>
  </a>
  </li>
  
  <li>
  <a href="#">
  <i class="bi bi-star-fill"></i>
  <span>Testimonials </span>
  </a>
  </li>
  
  <li>
  <a href="#">
  <i class="bi bi-gear-fill"></i>
  <span>Settings</span>
  </a>
  </li>
  
  <li class="logout">
  <a href="#">
 <i class="bi bi-box-arrow-right"></i>
  <span>Logout</span>
  </a>
  </li>
  </ul>
  </div>
  
  <!-- main content -->
  <div class="main--content">
  <div class="header--wrapper">
        <div class="header--title">
            <a class="nav navbar-brand text-white" href="Home.jsp" ><span class="text-warning">Uni</span>Stay</a>
            <h3>Admin Dashboard</h3>
        </div>
        <div class="user-info">
            <div class="search-box">
                <i class="bi bi-search"></i>
                <input type="text" placeholder="Search">
            </div>
             <img src="image/unistay-high-resolution-logo.png" alt="...">
        </div>
    </div>
  </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>