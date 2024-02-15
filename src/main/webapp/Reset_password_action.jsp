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
       
        
        // Redirect to a page indicating password reset success
        response.sendRedirect("Login.jsp");
    } else {
        // Invalid reset token, redirect to error page
        response.sendRedirect("forgotpas.jsp");
    }

    validateRs.close();
    validatePs.close();
    con.close();

} catch (SQLException e) {
    // Handle database errors
    e.printStackTrace();
}  catch (NoSuchAlgorithmException e) {
    // Handle hashing algorithm errors
    e.printStackTrace();
} 
%>
