<%@ page import="java.io.*,java.sql.*,jakarta.servlet.*,jakarta.servlet.http.*,jakarta.servlet.ServletException" %>
<%
    // Database connection details
    String url = "jdbc:mysql://localhost:3306/unistay";
    String user = "root";
    String password = "root";
    
    // Get the uploaded file
    Part filePart = null;
    InputStream inputStream = null;
    Connection conn = null;
    String message = null;
    
    try {
        if (request.getPart("profilePic") != null) {
            filePart = request.getPart("profilePic");
            inputStream = filePart.getInputStream();
            
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);

            // Create SQL query to insert the image into the database
            String sql = "INSERT INTO image (image) values (?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setBlob(1, inputStream);

            // Execute the query
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "Image uploaded and saved into database";
            }
        } else {
            message = "No file uploaded!";
        }
    } catch (SQLException ex) {
        message = "ERROR: " + ex.getMessage();
        ex.printStackTrace();
    } catch (Exception e) {
        message = "ERROR: " + e.getMessage();
        e.printStackTrace();
    } finally {
        if (inputStream != null) {
            inputStream.close();
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        request.setAttribute("Message", message);
        getServletContext().getRequestDispatcher("/Home.jsp").forward(request, response);
    }
%>
