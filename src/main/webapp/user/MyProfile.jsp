<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.awt.image.BufferedImage, javax.imageio.ImageIO, java.io.ByteArrayInputStream, java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MyProfile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="style.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Serif:wght@300;400&display=swap');

        * {
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

        .side-nav {
            width: 110px;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            padding: 30px 15px;
            background: rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(5px);
            color: white;
            display: flex;
            justify-content: space-between;
            flex-direction: column;
            z-index: 1; /* Ensure the side nav is above the main content */
        }

        .nav{
            font-size: 20px;
            align-items: center;
            margin-left: 5px;
        }

        .user {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 60px;
            font-size: 12px;
            padding: 10px;
            border-radius: 8px;
            margin-left: auto;
            margin-right: auto;
            overflow: hidden;
        }

        .user .user-name {
            display: none;
        }

        .user-name {
            margin-left: 7px;
        }

        .user-name h5 {
            font-size: 20px;
            font-weight: 600;
            white-space: nowrap;
        }

        .user-img {
            width: 40px;
            border-radius: 50%;
            margin: auto;
        }

        #imageContainer1 {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-size: cover;
        }

        ul {
            list-style: none;
            padding: 0 15px;
        }

        ul li {
            margin: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            border-radius: 5px;
            transition: all 0.5s ease-in-out;
        }

        ul li i {
            font-size: 20px;
            margin-right: 0px;
        }

        ul li:hover{
            text-decoration:underline;
        }

        ul li a {
            white-space: nowrap;
            text-decoration: none;
            color: white;
            display: none;
        }

        .side-nav:hover {
            width: 260px;
        }

        .side-nav:hover .user .user-name {
            display: block;
        }

        .side-nav:hover .user {
            width: 100%;
            background: rgba(0,0,0,0.5);
            backdrop-filter: blur(5px);
        }

        .side-nav:hover .user-img{
            margin: 0;
        }

        .side-nav:hover ul li a{
            display: block;
        }

        .side-nav:hover ul li i{
            margin-right: 10px;
        }

        .side-nav:hover ul li{
            justify-content: flex-start;
        }

        .main--content{
            margin-left: 110px; /* Adjusted margin */
            color: white;
            position: relative;
            width: calc(100% - 110px); /* Calculate width based on side nav */
            padding: 1rem;
            transition: margin-left 0.5s; /* Added transition for smooth shifting */
            z-index: 0; /* Ensure the main content is behind the side nav */
        }

        .header--wrapper{
            cursor: pointer;
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

        .user--info{
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .search-box{
            background: rgba(237,237,237);
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
 
 .upload--card{
 background-color: rgba(0,0,0,0.7);
 border-radius: 10px;
 padding: 1.2rem;
 width: 290px;
 height: 260px;
 display: flex;
 flex-direction: column;
 justify-content: space-between;
 transition: all 0.5s ease-in-out;
 }
 
  .upload--card:hover{
  transform: translateY(-5px);
  }
 
 form {
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  color: white
}
 #imageContainer {
  background-color: #ddd; /* Set background color */
  display: flex;
}
 
 .file-link {
  color: #ffd300; /* Link color */
  cursor: pointer; /* Show pointer cursor on hover */
}

.file-link:hover{
 text-decoration: underline; /* Underline the text */
}

.card--header{
diaplay: flex;
justify-content: space-between;
align-items: center;
margin-bottom: 20px;
}

.upload{
display: flex;
flex-direction: column;
}

.title{
font-size: 15px;
font-weight: 200;
text-align: center;
}

    </style>
</head>
<body>

<!-- header -->
<div class="side-nav">
    <div class="user">
        <div class="user-img">
            <%
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet res = null;
                try {
                    // Connect to the database
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

                    // Get the email from the session
                    String userEmail = (String) session.getAttribute("userEmail");

                    // Prepare and execute the query to retrieve the Blob data based on email
                    String sql = "SELECT image FROM image WHERE email = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, userEmail); // Corrected from 'email' to 'userEmail'
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
                        out.println("upload profile");
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
        </div>
        <div class="user-name">
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
                        String mobileNumber = rs.getString("mobilenumber");

                        // Check if the current user's email matches the one in the session
                        if (userEmail != null && userEmail.equals(email)) {
                            // Set session attribute for current user's username
                            session.setAttribute("username", username);
                            session.setAttribute("mobileNumber", mobileNumber);
            %>
                            <h5 class="modal-title"><%= username%></h5>
                            <p class="modal-title"><%= email%></p>
                            <p class="modal-title">+91 <%= mobileNumber %></p>
            <%
                            break; // Exit the loop once the username is found
                        }
                    }

                    rs.close();
                    stmt.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </div>
    </div>
    <ul class="bar">
        <li><i class="bi bi-pencil-square"></i> <a href="EditUserProfile.jsp">Edit your profile</a></li>
        <li><i class="bi bi-trash"></i> <a href="DeleteAccount.jsp">Delete Account</a></li>
        <li><i class="bi bi-gift"></i> <a href="#">Rewards</a></li>
        <li><i class="bi bi-chat-dots"></i> <a href="#">Messages</a></li>
        <li><i class="bi bi-suitcase-lg"></i> <a href="#">Our Bookings</a></li>
        <li><i class="bi bi-people"></i> <a href="#">Core Member</a></li>
        <li><i class="bi bi-gear"></i> <a href="#">settings</a></li>
    </ul>

    <ul>
        <li><i class="bi bi-box-arrow-right"></i> <a href="logout_action.jsp">Logout</a></li>
    </ul>
</div>

<!-- Upload Profile pic -->
<div class="main--content">
    <div class="header--wrapper">
        <div class="header--title">
            <a class="nav navbar-brand text-white" href="Home.jsp" ><span class="text-warning">Uni</span>Stay</a>
            <h3>User Dashboard</h3>
        </div>
        <div class="user-info">
            <div class="search-box">
                <i class="bi bi-search"></i>
                <input type="text" placeholder="Search">
            </div>
        </div>
    </div>
    
    <div class="card--container">
    <h3 class="main--title">Profile</h3>
    <div class="card--wrapper">
    <div class="upload--card">
    <div class="card--header">
    <div class="upload">
    <span class="title"> Upload Profile</span>
     <div class="text-center">    
          <form id="uploadForm" action="ProFileUploadServlet" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
   <div id="imageContainer" style="width: 90px; height: 90px; border-radius: 50%; overflow: hidden; margin: 0 auto;">
            <img id="previewImage" style="max-width: 100%; max-height: 100%; display: none;">
          </div>
          
          <br>
    <label for="profilePic" class="file-link" id="fileLabel">Choose Profile Picture</label>
    <input type="file" id="profilePic" name="profilePic" style="display: none;" onchange="displayFile()">
    <br>    
    <input type="submit" id="submitBtn" value="Upload" style="background:linear-gradient(to right, #5d4f08, #ffd300); color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">

</form>
        </div>
    </div>
      
    </div>
    </div>
    </div>   
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
    const sideNav = document.querySelector('.side-nav');
    const mainContent = document.querySelector('.main--content');

    sideNav.addEventListener('mouseenter', () => {
        mainContent.style.marginLeft = '260px'; // Adjust as per your side nav width
    });

    sideNav.addEventListener('mouseleave', () => {
        mainContent.style.marginLeft = '110px'; // Adjust as per your side nav width
    });
</script>

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
