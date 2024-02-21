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
            background:linear-gradient(to right, #5d4f08, #ffd300);
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
          
.file-link {
    color: blue; 
    text-decoration: underline; 
    cursor: pointer; 
}

input[type="file"] {
    display: none;
}
 
.file-link {
    color: #ffd300; /* Link color */
    text-decoration: underline; /* Underline the text */
    cursor: pointer; /* Show pointer cursor on hover */
}
      
    #imageContainer {
    background-color: #ddd; /* Set background color */
    display: flex;
    justify-content: center;
    align-items: center;
  }
     .modal-header{
      background:linear-gradient(to right, #5d4f08, #ffd300);
     }   
     
     .input-field{
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
         <% 
          try {
              Class.forName("com.mysql.cj.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

              Statement stmt = con.createStatement();
              ResultSet rs = stmt.executeQuery("SELECT * FROM user");

              while (rs.next()) {
          %>
                <a class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false"><i class="bi bi-person-circle"></i><%= rs.getString("username") %></a>    
          <% 
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
      </ul>
     
    </div>
  </div>
</nav>

<!-- My Profile-->
<div class="modal fade" id="profile-Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-warning text-dark">
       <h1 id="ModalLabel" class="fs-5 d-flex justify-content-center text-white">UniStay</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <div class="text-center">
         <i class="bi bi-person-circle"></i>
    
      </div>
     <div class="container text-center">
      <% 
          try {
              Class.forName("com.mysql.cj.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

              Statement stmt = con.createStatement();
              ResultSet rs = stmt.executeQuery("SELECT * FROM user");

              while (rs.next()) {
          %>
     <h5 class="modal-title"><%= rs.getString("username") %></h5>
     <% 
              }
              rs.close();
              stmt.close();
              con.close();
          } catch(Exception e) {
              e.printStackTrace();
          }
          %>
     </div>
        <table class="table">
        <tbody>
          <% 
          try {
              Class.forName("com.mysql.cj.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

              Statement stmt = con.createStatement();
              ResultSet rs = stmt.executeQuery("SELECT * FROM user");

              while (rs.next()) {
          %>
          
         
                  
                  <tr>
                  <th scope="row">Username: </th>
                  <td><%= rs.getString("username") %></td>
                  </tr>
                  
                  <tr>
                  <th scope="row">Mobile No.: </th>
                  <td><%= rs.getString("mobilenumber") %></td>
                  </tr>
                  
                  <tr>
                  <th scope="row">Email: </th>
                  <td><%= rs.getString("email") %></td>
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
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-warning text-white" style="background:linear-gradient(to right, #5d4f08, #ffd300);">Edit Profile</button>
      </div>
    </div>
  </div>
</div>

  <!-- Upload Profile pic -->
  
 <div class="modal fade" id="Upload-Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-warning text-dark">
        <h5 id="ModalLabel" class="modal-title fs-5 d-flex justify-content-center text-white">UniStay</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="text-center">
          <div id="imageContainer" style="width: 150px; height: 150px; border-radius: 50%; overflow: hidden; margin: 0 auto;">
            <img id="previewImage" style="max-width: 100%; max-height: 100%; display: none;">
          </div>
          
          <br>
          
          <form action="ProFileUploadServlet" method="post" enctype="multipart/form-data">
            <label for="profilePic" class="file-link" id="fileLabel">Choose Profile Picture</label>
            <input type="file" id="profilePic" name="profilePic" style="display: none;" onchange="displayFile()">
            <br>
             <div>
            <input type="email" name="email" class="input-field" placeholder="Email" required>
        </div>
            
            <input type="submit" value="Upload">
          </form>
          
        </div>
      </div>
    </div>
  </div>
</div>


<script>
  function displayFile() {
    var input = document.getElementById('profilePic');
    var previewImage = document.getElementById('previewImage');

    if (input.files && input.files[0]) {
      var reader = new FileReader();
      
      reader.onload = function(e) {
        previewImage.src = e.target.result;
        previewImage.style.display = 'block';
      }
      
      reader.readAsDataURL(input.files[0]);
    } else {
      previewImage.style.display = 'none';
    }
  }
</script>

</body>
</html>