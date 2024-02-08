<%@ page import="java.sql.*, java.security.MessageDigest, java.security.NoSuchAlgorithmException" %>
<%@ page import="java.util.UUID" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
try {
    String email = request.getParameter("email");

    // Generate a random password reset token
    String resetToken = UUID.randomUUID().toString();

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

    // Update the user's record in the database with the reset token
    String updateQuery = "UPDATE user SET reset_token=? WHERE email=?";
    PreparedStatement updatePs = con.prepareStatement(updateQuery);
    updatePs.setString(1, resetToken);
    updatePs.setString(2, email);
    int updateResult = updatePs.executeUpdate();

    if (updateResult > 0) {
        // Send the reset token to the user via email (or any other method)
        // Example: code to send email
       //  EmailSender.sendResetPasswordEmail(email, resetToken);
        
        // Forward the user to a page indicating that the reset instructions have been sent
        response.sendRedirect("forgotpas_ResetInstructions.jsp");
    } else {
        // User not found, redirect back to forgot password page with an error message
        response.sendRedirect("ForgotPassword.jsp?error=user_not_found");
    }
    con.close();
} catch (SQLException e) {
    // Handle database errors
    e.printStackTrace();
}
%>
