<%@ page import="java.sql.*, java.security.MessageDigest, java.security.NoSuchAlgorithmException, java.util.Base64, jakarta.servlet.http.HttpSession, jakarta.servlet.RequestDispatcher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
HttpSession sess = request.getSession(false); // Retrieve existing session without creating a new one

// Check if session exists and if the email attribute is set
if (sess != null && sess.getAttribute("userEmail") != null) {
    String email = (String) sess.getAttribute("userEmail");
    
    // Proceed with profile update process
    String username = request.getParameter("username");
    String mobileno = request.getParameter("mobileno");
    String newEmail = request.getParameter("email");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");
        
        String qr = "UPDATE user SET username=?, mobilenumber=?, email=? WHERE email=?";
        PreparedStatement ps = con.prepareStatement(qr);
        ps.setString(1, username);
        ps.setString(2, mobileno);
        ps.setString(3, newEmail);
        ps.setString(4, email);
                
        int i = ps.executeUpdate();
        if (i > 0) {
            request.setAttribute("successMessage", "Profile Updated Successfully!!");
            // You can redirect to profile page or any other desired page
            // For example:
            // response.sendRedirect("Profile.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Failed to update profile!!");
            RequestDispatcher rd = request.getRequestDispatcher("EditUserProfile.jsp");
            rd.forward(request, response);
        }
        con.close();
    } catch(SQLException e2) {
        e2.printStackTrace();
    } catch (Exception e) {
        System.out.println("Error occurred: " + e.getMessage());
        e.printStackTrace();
    }
} else {
    // If user is not logged in, redirect to login page or perform desired action
    response.sendRedirect("Login.jsp");
}
%>
