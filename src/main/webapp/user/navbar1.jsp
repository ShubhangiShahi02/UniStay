<%@ page import="java.sql.*, java.awt.image.BufferedImage, javax.imageio.ImageIO, java.io.ByteArrayInputStream, java.util.Base64" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>navbar1</title>
<style>
.navbar {
  background: rgba(0, 0, 0, 0.2);
}

.navbar-nav a {
  font-size: 15px;
  font-weight: 500;
}

.navbar-light .navbar-brand {
  font-size: 25px;
  font-weight: 900;
  letter-spacing: 2px;
}

.navbar-nav a:hover,
.navbar-nav a:focus {
  text-decoration: underline;
}

.w-100 {
  height: 100vh;
}

@media only screen and (max-width: 767px) {
  .navbar-nav {
    text-align: center;
  }
}

i {
  margin-right: 4px;
  font-size: 16px;
}

.modal-body i {
  font-size: 80px;
  color: grey;
}

h1 {
  text-align: center;
}

form {
  max-width: 400px;
  margin: 0 auto;
  background-color: #fff;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
  font-weight: bold;
}

input[type="submit"] {
  background: linear-gradient(to right, #5d4f08, #ffd300);
  color: #fff;
  border: none;
  padding: 10px 20px;
  border-radius: 5px;
  cursor: pointer;
  display: block;
  margin: 0 auto;
}

input[type="submit"]:hover {
  background-color: #0056b3;
}

.input-field {
  width: 100%;
  padding: 10px 0;
  margin: 5px 0;
  border-left: 0;
  border-top: 0;
  border-right: 0;
  border-bottom: 1px solid #eee7e7;
  outline: none;
  background: transparent;
  color: white;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="Home.jsp" ><span class="text-warning">Uni</span>Stay</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-white"  aria-current="page" href="Home.jsp">Home</a>
        </li>
       <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="index.jsp\#about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="index.jsp\#services">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="index.jsp\#portfolio">Portfolio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="index.jsp\#contact">Contact</a>
        </li>
  
        <li class="nav-item dropdown">
         <% 
         try {
        	    Class.forName("com.mysql.cj.jdbc.Driver");
        	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

        	    Statement stmt = con.createStatement();
        	    ResultSet rs = stmt.executeQuery("SELECT * FROM user");

        	    // Get the email from the session
        	    String userEmail = (String) session.getAttribute("userEmail");

        	    while (rs.next()) {
        	        String username = rs.getString("username");
        	        String email = rs.getString("email"); // Corrected variable name

        	        // Check if the current user's email matches the one in the session
        	        if (userEmail != null && userEmail.equals(email)) { // Corrected variable name
        	            // Set session attribute for current user's username
        	            session.setAttribute("username", username);
        	%>
        	            <a class="nav-link text-white" href="MyProfile.jsp" role="button" aria-expanded="false">
        	                <i class="bi bi-person-circle"></i><%= username %>
        	            </a>    
        	<% 
        	            break; // Exit the loop once the username is found
        	        }
        	    }

        	    rs.close();
        	    stmt.close();
        	    con.close();
        	} catch(Exception e) {
        	    e.printStackTrace();
        	}
        	%>

   
    <ul class="dropdown-menu">
      <li class="nav-item">
          <a class="nav-link"   href="#!" data-bs-toggle="modal" data-bs-target="#profile-Modal">My Profile</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link"   href="#!" data-bs-toggle="modal" data-bs-target="#Upload-Modal">Upload Profile Pic</a>
        </li>
        
      <li><hr class="dropdown-divider"></li>
      <li class="nav-item"><a class="nav-link " aria-current="page" href="logout_action.jsp">Logout</a></li>
    </ul>
  </li>
  
   <li class="nav-item">
  <a class="btn btn-outline-light" href="Post_Property.jsp">
  <i class="bi bi-upload"></i> Post Property
</a>
   </li>
</ul>
</div>
</div>
</nav>


</body>
</html>