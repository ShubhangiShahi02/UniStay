<!-- Signup_Action_JDBC.jsp -->
<%@page import="java.sql.*" %>
<%@page import="java.security.MessageDigest" %>
<%@page import="java.security.NoSuchAlgorithmException" %>
<%@page import="java.util.Base64" %>

<% 
String username = request.getParameter("username");
String mobileno = request.getParameter("mobileno");
String email = request.getParameter("email");
String plainPassword = request.getParameter("password");

try {
    // Hash the password
    MessageDigest md = MessageDigest.getInstance("SHA-256");
    byte[] hashedPasswordBytes = md.digest(plainPassword.getBytes("UTF-8"));
    String hashedPassword = Base64.getEncoder().encodeToString(hashedPasswordBytes);

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");
    
    String qr = "INSERT INTO user (username, mobilenumber, email, password) VALUES (?, ?, ?, ?)";
    PreparedStatement ps = con.prepareStatement(qr);
    ps.setString(1, username);
    ps.setString(2, mobileno);
    ps.setString(3, email);
    ps.setString(4, hashedPassword);
            
    int i = ps.executeUpdate();
    if (i > 0) {
        RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
        rd.forward(request, response);
%>
        <script>alert("Successfully Registered !!");</script>
<%
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
        rd.forward(request, response);
%>
        <script>alert("Server failed to register!!");</script>
<%
    }
    con.close();
} catch(NoSuchAlgorithmException e1) {
    e1.printStackTrace();
} catch(SQLException e2) {
    e2.printStackTrace();
} catch (Exception e) {
    System.out.println("Error occurred: " + e.getMessage());
    e.printStackTrace();
}

%>