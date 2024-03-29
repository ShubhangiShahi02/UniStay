<%@ page import="java.sql.*, java.security.MessageDigest, java.security.NoSuchAlgorithmException, java.util.Base64, jakarta.servlet.http.HttpSession, jakarta.servlet.RequestDispatcher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
HttpSession sess= request.getSession(false); // Retrieve existing session without creating a new one

// Check if session exists and if the email attribute is set
if (sess != null && sess.getAttribute("userEmail") != null) {
    // Proceed with deletion process
    String userEmail = (String) sess.getAttribute("userEmail");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");
        
        // First, delete associated images
        String deleteImagesQuery = "DELETE FROM image WHERE email = ?";
        PreparedStatement deleteImagesPS = con.prepareStatement(deleteImagesQuery);
        deleteImagesPS.setString(1, userEmail);
        int imagesDeleted = deleteImagesPS.executeUpdate();
        
        // Then, delete the user's account
        String deleteUserQuery = "DELETE FROM user WHERE email = ?";
        PreparedStatement deleteUserPS = con.prepareStatement(deleteUserQuery);
        deleteUserPS.setString(1, userEmail);
        
        int usersDeleted = deleteUserPS.executeUpdate();

        if (usersDeleted > 0) {
            // Deletion successful, invalidate session and redirect to login page
            sess.invalidate();
            request.setAttribute("successMessage", "Account successfully deleted, along with associated images!!");
            RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
            rd.forward(request, response);
        } else {
            // Deletion failed
            request.setAttribute("errorMessage", "Failed to delete account!!");
            RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
            rd.forward(request, response);
        }
        
        con.close();
    } catch(SQLException e) {
        e.printStackTrace();
    } catch (Exception e) {
        System.out.println("Error occurred: " + e.getMessage());
        e.printStackTrace();
    }
} else {
    // Session doesn't exist or user not logged in, redirect to login page
    response.sendRedirect("Login.jsp");
}
%>
