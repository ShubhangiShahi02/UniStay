<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*, java.awt.image.BufferedImage, javax.imageio.ImageIO, java.io.ByteArrayInputStream, java.util.Base64" %>
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
color: #EBAB00;
}

.header--title a{
font-size: 20px;
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

/* card container */
 .card--container{
 background:rgba(0,0,0,0.3); 
 backdrop-filter: blur(5px);
 padding: 2rem;
 border-radius: 10px;
 }
 
 .card--wrapper{
 display: flex;
 flex-wrap: wrap;
 gap: 1rem;
 }
 
.main--title{
 padding-bottom: 10px;
 font-size: 20px;
 }
 
 .user--card{
 background-color: rgba(0,0,0,0.7);
 border-radius: 10px;
 padding: 1.2rem;
 width: 300px;
 height: 150px;
 display: flex;
 flex-direction: column;
 justify-content: space-between;
 transition: all 0.5s ease-in-out;
 }
 
 .user--card:hover{
 transform: translateY(-5px);
 }
 
.card--header{
display: flex;
justify-content: space-between;
align-items: center;
margin-bottom: 20px;
}

.user{
display: flex;
flex-direction: column;
}

.title{
font-size: 15px;
font-weight: 200;
}

.user-value{
font-size: 28px;
font-family: "Courier New", Courier, monospace;
font-weight: 600;
}

.icon{
color: #000;
padding: 0.4rem;
height: 60px;
width: 60px;
text-align: center;
border-radius: 50%;
font-size: 2rem;
background: #fff;
}

.card-details{
font-size: 18px;
color: #dcdcdc;
font-family: "Courier New", Courier, monospace;
}

/* user detail table */
.tabular--wrapper{
 background: rgba(0,0,0,0.3);
 backdrop-filter: blur(5px);
 margin-top: 1rem;
 border-radius: 10px;
 padding: 2rem;
}

.table-container{
width: 100%;
}

table{
width: 100%;
border-collapse: collapse;
}

thead{
background-color: rgba(0,0,0,0.7);
color: #fff;
}

th{
padding: 15px;
text-align: left;
}

tbody{
background-color: rgba(0,0,0,0.2);
}

td {
padding: 15px;
font-size: 14px;
}

tr:nth-child(even){
background: rgba(0,0,0,0.5);
}

tfoot{
background-color: rgba(0,0,0,0.9);
font-weight: bold;
color: #fff;
}

tfoot td{
padding: 15px;
}

.table-container button{
color: green;
background: none;
cursor: pointer;
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
    
    <!-- card-container -->
  <div class="card--container">
  <h3 class="main--title">Status</h3>
  <div class="card--wrapper">
  <div class="user--card">
  <div class="card--header">
  <div class="user">
  <span class="title">User Login Data</span>
  <span class="user-value">
   <%
        String url = "jdbc:mysql://localhost:3306/unistay"; // Replace "your_database_name" with your actual database name
        String username1 = "root"; // Replace "your_username" with your actual database username
        String password = "root"; // Replace "your_password" with your actual database password

        try {
            Class.forName("com.mysql.jdbc.Driver"); // Load the MySQL JDBC driver
            Connection connection = DriverManager.getConnection(url, username1, password);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM user"); // Replace "user" with your actual table name

            if (resultSet.next()) {
                int count = resultSet.getInt(1);
    %>
               <%= count %>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
  </span>
  </div>
  <i class="bi bi-people-fill icon"></i>
  </div>
  <span class="card-details">Registered User</span>
  </div>
  
  <!-- Property listing no. -->
  <div class="user--card">
  <div class="card--header">
  <div class="user">
  <span class="title">Property Listing</span>
  <span class="user-value">
   0
  </span>
  </div>
  <i class="bi bi-list-stars icon"></i>
  </div>
  <span class="card-details">Registered Properties</span>
  </div>
  
   
  <!-- Booking Status -->
  <div class="user--card">
  <div class="card--header">
  <div class="user">
  <span class="title">Total No. Of Bookings</span>
  <span class="user-value">
   0
  </span>
  </div>
  <i class="bi bi-building-add icon"></i>
  </div>
  <span class="card-details">Booking Status</span>
  </div>
  
  <!-- Booking Status -->
  <div class="user--card">
  <div class="card--header">
  <div class="user">
  <span class="title">Messages</span>
  <span class="user-value">
   0
  </span>
  </div>
  <i class="bi bi-chat-dots-fill icon"></i>
  </div>
  <span class="card-details">For Enquiry </span>
  </div>
  </div>
  </div>
  
  <!-- table -->
  <div class="tabular--wrapper">
  <h3 class="main--title">User's Details</h3>
  <div class="table-container">
    <table>
      <thead>
        <tr>
          <th>Username</th>
          <th>Contact Number</th>
          <th>Email id</th>
          <th>Edit</th>
        </tr>
      </thead>
      <tbody>
        <% 
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM user");

            while (rs.next()) {
                String username = rs.getString("username");
                String mobileNumber = rs.getString("mobilenumber");
                String email = rs.getString("email");
        %>
                <tr>
                    <td><%= username %></td>
                    <td><%= mobileNumber %></td>
                    <td><%= email %></td>
                    <td><button>Edit</button></td>
                </tr>
        <% 
            }
            rs.close();
            stmt.close();
            con.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
        %>
      </tbody>
      <tfoot>
      <tr>
      <td  colspan="4">Total:  <%
        String url1 = "jdbc:mysql://localhost:3306/unistay"; // Replace "your_database_name" with your actual database name
        String username2 = "root"; // Replace "your_username" with your actual database username
        String password1 = "root"; // Replace "your_password" with your actual database password

        try {
            Class.forName("com.mysql.jdbc.Driver"); // Load the MySQL JDBC driver
            Connection connection = DriverManager.getConnection(url1, username2, password1);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM user"); // Replace "user" with your actual table name

            if (resultSet.next()) {
                int count = resultSet.getInt(1);
    %>
               <%= count %>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %></td>
      </tr>
      </tfoot>
    </table>
  </div>
</div>

  </div>
  
  
  
  
  
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>