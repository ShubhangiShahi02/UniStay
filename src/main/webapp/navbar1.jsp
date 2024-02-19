<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

.modal-body i{
font-size: 80px;
color: grey;
}

</style>
</head>
<body>
<nav class="navbar navbar-expand-lg fixed-top">
  <div class="container">
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
    <a class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Dropdown</a>
    <ul class="dropdown-menu">
      <li class="nav-item">
          <a class="nav-link"   href="#!" data-bs-toggle="modal" data-bs-target="#profile-Modal">My Profile</a>
        </li>
      <li><hr class="dropdown-divider"></li>
      <li class="nav-item"><a class="nav-link " aria-current="page" href="logout_action.jsp">Logout</a></li>
    </ul>
  </li>
      </ul>
     
    </div>
  </div>
</nav>

<!-- My Profile-->
<div class="modal fade" id="profile-Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-warning text-dark">
       <h1 id="ModalLabel" class="fs-5 d-flex justify-content-center">UniStay</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <ul class="list-unstyled" style="text-align: center;">
          <% 
          try {
              Class.forName("com.mysql.cj.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

              Statement stmt = con.createStatement();
              ResultSet rs = stmt.executeQuery("SELECT * FROM user");

              while (rs.next()) {
          %>
                    <li><i class="bi bi-person-circle"></i></li>
                    <li class="fs-4"><span class="fw-bold fs-4">Username: </span> <%= rs.getString("username") %></li>
                   <li class="fs-4"><span class="fw-bold fs-4">Mobile No.: </span>+91 <%= rs.getString("mobilenumber") %></li>
                   <li class="fs-4"><span class="fw-bold fs-4">Email: </span> <%= rs.getString("email") %></li>
          <% 
              }
              rs.close();
              stmt.close();
              con.close();
          } catch(Exception e) {
              e.printStackTrace();
          }
          %>
        </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-warning">Save changes</button>
      </div>
    </div>
  </div>
</div>

  

</body>
</html>