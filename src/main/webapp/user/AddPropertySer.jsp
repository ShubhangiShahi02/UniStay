<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.logging.Level" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="jakarta.servlet.ServletException" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="jakarta.servlet.http.HttpServletResponse" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        // Retrieve form data
        String email = request.getParameter("email");
        String propertyName = request.getParameter("property_name");
        String propertyDesc = request.getParameter("property_desc");
        String propertyType = request.getParameter("property_type");
        String location = request.getParameter("location");
        int price = Integer.parseInt(request.getParameter("price"));
        String status = request.getParameter("status");
        String imageUrl = request.getParameter("image_url");

        // JDBC connection parameters
        String url = "jdbc:mysql://localhost:3306/unistay";
        String username = "root";
        String password = "root";

        try {
            // Establish JDBC connection
            Connection conn = DriverManager.getConnection(url, username, password);
            // Prepare SQL statement
            String sql = "INSERT INTO property_details (email, property_name, property_desc, property_type, location, price, upload_date, status, image_url) VALUES (?, ?, ?, ?, ?, ?, NOW(), ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, propertyName);
            statement.setString(3, propertyDesc);
            statement.setString(4, propertyType);
            statement.setString(5, location);
            statement.setInt(6, price);
            statement.setString(7, status);
            statement.setString(8, imageUrl);

            // Execute the insert statement
            statement.executeUpdate();

            // Redirect back to the form with success message
            response.sendRedirect("AddPropertySer.jsp?success=true");
        } catch (SQLException e) {
            // Log the exception
            Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, "SQL Exception", e);
            // Redirect back to the form with error message
            response.sendRedirect("AddPropertySer.jsp?error=true");
        } catch (NumberFormatException e) {
            // Handle the case where price is not a valid integer
            response.sendRedirect("AddPropertySer.jsp?error=invalid_price");
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Property</title>
</head>
<body>
    <h2>Add Property Details</h2>
    <form action="AddPropertySer.jsp" method="post">
        <label>Email:</label><br>
        <input type="email" name="email" required><br>
        <label>Property Name:</label><br>
        <input type="text" name="property_name" required><br>
        <label>Property Description:</label><br>
        <input type="text" name="property_desc" required><br>
        <label>Property Type:</label><br>
        <input type="text" name="property_type" required><br>
        <label>Location:</label><br>
        <input type="text" name="location" required><br>
        <label>Price:</label><br>
        <input type="number" name="price" required><br>
        <label>Status:</label><br>
        <select name="status">
            <option value="Available">Available</option>
            <option value="Rented">Rented</option>
        </select><br>
        <label>Image URL:</label><br>
        <input type="url" name="image_url"><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
