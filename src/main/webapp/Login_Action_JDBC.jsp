<!-- Login_Action_JDBC.jsp -->
<%@ page import="java.sql.*, java.security.MessageDigest, java.security.NoSuchAlgorithmException, jakarta.servlet.http.Cookie, jakarta.servlet.http.HttpSession, jakarta.servlet.RequestDispatcher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
try {
    String username = request.getParameter("email"); 
    String plainPassword = request.getParameter("password");

    // Hash the password
    MessageDigest md = MessageDigest.getInstance("SHA-256");
    byte[] hashedPasswordBytes = md.digest(plainPassword.getBytes("UTF-8"));
    
    // Encode the hashed password bytes using Base64
    String hashedPassword = java.util.Base64.getEncoder().encodeToString(hashedPasswordBytes);

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

    String query = "SELECT * FROM user WHERE email=? AND password=?";
    PreparedStatement ps = con.prepareStatement(query);
    ps.setString(1, username); 
    ps.setString(2, hashedPassword);
    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        // Login successful, set session and redirect to home page
        HttpSession sess = request.getSession();
        sess.setAttribute("username", username); 
        response.sendRedirect("Home.jsp");
    } else {
        // Login failed, redirect back to login page with error message
        response.sendRedirect("Login.jsp?error=1");
    }

    con.close();
} catch (SQLException | NoSuchAlgorithmException e) {
    // Handle exceptions appropriately
    e.printStackTrace();
}
%>
