<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>navbar</title>
<style>
.navbar{
background: rgba(0,0,0,0.2);
}
.navbar-nav a{
font-size: 15px;
font-weight: 500;
}
.navbar-light .navbar-brand{
font-size: 25px;
font-weight: 900;
letter-spacing: 2px;
}
.navbar-nav a:hover,
.navbar-nav a:focus
{
text-decoration: underline;
}
.w-100{
height: 100vh;
}
 @media only screen and (max-width: 767px){
 .navbar-nav{
 text-align: center;
 }
 }
 
i{
margin-right: 4px;
font-size: 16px;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg fixed-top">
  <div class="container">
    <a class="navbar-brand text-white" href="index.jsp" ><span class="text-warning">Uni</span>Stay</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-white"  aria-current="page" href="Dashboard_action.jsp">DashBoard</a>
        </li>
       <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="#about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="#services">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="#portfolio">Portfolio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="#contact">Contact</a>
        </li>
       <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="AdminLogin.jsp"><i class="bi bi-person-add"></i>Admin-Login</a></a>
        </li>

      </ul>
     
    </div>
  </div>
</nav>
</body>
</html>