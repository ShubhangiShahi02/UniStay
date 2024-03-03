<%@ page import="java.sql.*, java.awt.image.BufferedImage, javax.imageio.ImageIO, java.io.ByteArrayInputStream, java.util.Base64" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>.modal-body i {
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

.modal-header {
  background: linear-gradient(to right, #5d4f08, #ffd300);
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
<!-- My Profile-->
<div class="modal fade" id="profile-Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-warning text-dark">
       <h1 id="ModalLabel" class="fs-5 d-flex justify-content-center text-white">UniStay</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
 

     <div class="container1 text-center">
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
        String email = rs.getString("email");

        // Check if the current user's email matches the one in the session
        if (userEmail != null && userEmail.equals(email)) {
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
    String userEmail = (String) session.getAttribute("userEmail");

    while (rs.next()) {
        String username = rs.getString("username");
        String mobileNumber = rs.getString("mobilenumber");
        String email = rs.getString("email");

        // Check if the current user's email matches the one in the session
        if (userEmail != null && userEmail.equals(email)) {
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
                <td><%= email %></td>
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
        <a type="button" class="btn text-white" style="background:linear-gradient(to right, #5d4f08, #ffd300); padding: 10px 20px; text-decoration: none; border-radius: 5px; border: none; cursor: pointer;" href="EditUserProfile.jsp">Edit Profile</a>
   <a type="button" class="btn text-white" style="background:linear-gradient(to right, #5d4f08, #ffd300); padding: 10px 20px; text-decoration: none; border-radius: 5px; border: none; cursor: pointer;" href="DeleteAccount.jsp">Delete Account</a>


      </div>
    </div>
  </div>
</div>


 <!-- Upload Profile pic -->
  
 
        <div class="text-center">
          <div id="imageContainer" style="width: 150px; height: 150px; border-radius: 50%; overflow: hidden; margin: 0 auto;">
            <img id="previewImage" style="max-width: 100%; max-height: 100%; display: none;">
          </div>
          
          <br>
          
          <form id="uploadForm" action="ProFileUploadServlet" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
    <label for="profilePic" class="file-link" id="fileLabel">Choose Profile Picture</label>
    <input type="file" id="profilePic" name="profilePic" style="display: none;" onchange="displayFile()">
    <br>    
    <input type="submit" id="submitBtn" value="Upload" style="background:linear-gradient(to right, #5d4f08, #ffd300); color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">

</form>
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