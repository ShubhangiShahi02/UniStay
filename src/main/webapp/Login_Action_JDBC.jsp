<!-- Login_Action_JDBC.jsp -->
<%@ page import="java.sql.*, java.security.MessageDigest, java.security.NoSuchAlgorithmException" %>
<%@page import="java.util.Base64" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
try {
    String email = request.getParameter("email");
    String plainPassword = request.getParameter("password");

    // Hash the password
    MessageDigest md = MessageDigest.getInstance("SHA-256");
    byte[] hashedPasswordBytes = md.digest(plainPassword.getBytes("UTF-8"));
    String hashedPassword = Base64.getEncoder().encodeToString(hashedPasswordBytes);

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

    String query = "SELECT * FROM user WHERE email=? AND password=?";
    PreparedStatement ps = con.prepareStatement(query);
    ps.setString(1, email);
    ps.setString(2, hashedPassword);
    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        // Login successful, redirect to home page
        response.sendRedirect("Home.jsp");
    } else {
        // Login failed, redirect back to login page with error message
        RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
        rd.include(request, response);
%>
        <script>alert("Incorrect email or password");</script>
<%
    }
    con.close();
} catch (SQLException | NoSuchAlgorithmException e) {
    // Handle exceptions appropriately
    e.printStackTrace();
}
%>
