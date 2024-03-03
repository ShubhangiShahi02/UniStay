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
            box-sizing: border-box;
        }

        .header {
            width: 100%;
            height: 100vh;
            background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(image/New2.webp);
            background-position: center;
            background-size: cover;
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
            transition: width 0.5s;
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
        }

        ul li i {
            font-size: 20px;
            margin-right: 0px;
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
    </style>
</head>
<body>

<!-- header -->
<div class="header">
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

                            // Check if the current user's email matches the one in the session
                            if (userEmail != null && userEmail.equals(email)) {
                                // Set session attribute for current user's username
                                session.setAttribute("username", username);
                %>
                                <h5 class="modal-title"><%= username%></h5>
                                <p class="modal-title"><%= email%></p>
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
        <ul>
            <li><i class="bi bi-pie-chart"></i> <a href="#">DashBoard</a></li>
            <li><i class="bi bi-bar-chart"></i> <a href="#">Report</a></li>
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
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
