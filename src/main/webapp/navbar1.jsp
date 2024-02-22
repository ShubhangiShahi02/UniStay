<%@ page import="java.sql.*, java.awt.image.BufferedImage, javax.imageio.ImageIO, java.io.ByteArrayInputStream, java.util.Base64" %>
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
     
     #imageContainer1 {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            overflow: hidden;
            margin: 0 auto;
            background-size: cover;
            background-position: center;
        }
        #previewImage {
            max-width: 100%;
            max-height: 100%;
            display: none;
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

    // Get the email from the session
    String email = (String) session.getAttribute("email");

    while (rs.next()) {
        String username = rs.getString("username");
        String userEmail = rs.getString("email");
        
        // Check if the current user's email matches the one in the session
        if (email != null && email.equals(userEmail)) {
            // Set session attribute for current user's username
            session.setAttribute("username", username);
        %>
            <a class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">
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
   <%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet res = null;
    try {
        // Connect to the database
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

        // Get the email from the session
        String email = (String) session.getAttribute("email");

        // Prepare and execute the query to retrieve the Blob data based on email
        String sql = "SELECT image FROM image WHERE email = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, email);
        res = pstmt.executeQuery();

        // Check if there are results
        if (res.next()) {
            // Get the Blob data from the result set
            byte[] blobData = res.getBytes("image");

            // Convert the Blob data to Base64
            String base64Image = Base64.getEncoder().encodeToString(blobData);

            // Set the background image of the container div
            out.println("<div id=\"imageContainer1\" style=\"background-image: url('data:image/jpeg;base64," + base64Image + "')\"></div>");
        } else {
            out.println("No image found.");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close resources
        try {
            if (res != null) res.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

     <div class="container text-center">
      <% 
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM user");

    // Get the email from the session
    String email = (String) session.getAttribute("email");

    while (rs.next()) {
        String username = rs.getString("username");
        String userEmail = rs.getString("email");

        // Check if the current user's email matches the one in the session
        if (email != null && email.equals(userEmail)) {
            // Set session attribute for current user's username
            session.setAttribute("username", username);
%>
            <h5 class="modal-title"><%= username %></h5>
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

     </div>
       <table class="table">
    <tbody>
        <% 
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM user");

            // Get the email from the session
            String email = (String) session.getAttribute("email");

            while (rs.next()) {
                String username = rs.getString("username");
                String mobileNumber = rs.getString("mobilenumber");
                String userEmail = rs.getString("email");

                // Check if the current user's email matches the one in the session
                if (email != null && email.equals(userEmail)) {
                    // Set session attributes for current user's details
                    session.setAttribute("username", username);
                    session.setAttribute("mobileNumber", mobileNumber);
                %>
                    <tr>
                        <th scope="row">Username: </th>
                        <td><%= username %></td>
                    </tr>
                    <tr>
                        <th scope="row">Mobile No.: </th>
                        <td><%= mobileNumber %></td>
                    </tr>
                    <tr>
                        <th scope="row">Email: </th>
                        <td><%= userEmail %></td>
                    </tr>
                <% 
                    break; // Exit the loop once the user details are found
                }
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
          
          <form id="uploadForm" action="ProFileUploadServlet" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
    <label for="profilePic" class="file-link" id="fileLabel">Choose Profile Picture</label>
    <input type="file" id="profilePic" name="profilePic" style="display: none;" onchange="displayFile()">
    <br>    
    <input type="submit" id="submitBtn" value="Upload">
</form>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
    function validateForm() {
        // Disable submit button to prevent multiple submissions
        document.getElementById("submitBtn").disabled = true;
        return true; // You can perform additional validation here if needed
    }

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