<%@ page import="java.sql.*, java.security.MessageDigest, java.security.NoSuchAlgorithmException" %>
<%@ page import="java.util.Base64" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
try {
    String email = request.getParameter("email");
    String resetToken = request.getParameter("reset_token");
    String newPassword = request.getParameter("password");

    // Validate reset token
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");
    String validateQuery = "SELECT * FROM user WHERE email=? AND reset_token=?";
    PreparedStatement validatePs = con.prepareStatement(validateQuery);
    validatePs.setString(1, email);
    validatePs.setString(2, resetToken);
    ResultSet validateRs = validatePs.executeQuery();

    String message = ""; // Initialize message variable

    if (validateRs.next()) {
        // Reset token is valid, update the password
        String updateQuery = "UPDATE user SET password=? WHERE email=?";
        PreparedStatement updatePs = con.prepareStatement(updateQuery);
        
        // Hash the new password
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        byte[] hashedPasswordBytes = md.digest(newPassword.getBytes("UTF-8"));
        String hashedPassword = Base64.getEncoder().encodeToString(hashedPasswordBytes);
        
        updatePs.setString(1, hashedPassword);
        updatePs.setString(2, email);
        updatePs.executeUpdate();
        updatePs.close();
       
        // Clean up reset token record
        String cleanupQuery = "UPDATE user SET reset_token = NULL WHERE email=?";
        PreparedStatement cleanupPs = con.prepareStatement(cleanupQuery);
        cleanupPs.setString(1, email);
        cleanupPs.executeUpdate();
        cleanupPs.close();

        // Set success message in session
        message = "Password reset successful!";
        request.getSession().setAttribute("message", message);

        // Redirect to Login.jsp
        response.sendRedirect("Login.jsp");
    } else {
        // Set error message in session
        message = "Invalid reset token. Please try again.";
        request.getSession().setAttribute("message", message);

        // Redirect to forgotpas.jsp
        response.sendRedirect("forgotpas.jsp");
    }

    validateRs.close();
    validatePs.close();
    con.close();

} catch (SQLException e) {
    // Handle database errors
    e.printStackTrace();
} catch (NoSuchAlgorithmException e) {
    // Handle hashing algorithm errors
    e.printStackTrace();
} 
%>
