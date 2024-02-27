<!-- Login_Action_JDBC.jsp -->
<%@ page import="java.sql.*, java.security.MessageDigest, java.security.NoSuchAlgorithmException, jakarta.servlet.http.HttpSession, jakarta.servlet.RequestDispatcher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
try {
    String email = request.getParameter("email");
    String plainPassword = request.getParameter("password");

    // Hash the password using SHA-256
    MessageDigest md = MessageDigest.getInstance("SHA-256");
    byte[] hashedPasswordBytes = md.digest(plainPassword.getBytes("UTF-8"));
    
    // Convert hashed password bytes to Base64 string
    String hashedPassword = java.util.Base64.getEncoder().encodeToString(hashedPasswordBytes);

    // Establish database connection
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

    // Prepare SQL query with parameterized statement to prevent SQL injection
    String query = "SELECT * FROM user WHERE email=? AND password=?";
    PreparedStatement ps = con.prepareStatement(query);
    ps.setString(1, email); 
    ps.setString(2, hashedPassword);
    
    // Execute the query
    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        // Login successful, set session and redirect to home page
        String userEmail = rs.getString("email");
        HttpSession sess = request.getSession();
        session.setAttribute("userEmail", userEmail); // Store user's email in session
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
