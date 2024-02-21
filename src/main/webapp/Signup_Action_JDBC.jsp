<%@ page import="java.sql.*, java.security.MessageDigest, java.security.NoSuchAlgorithmException, java.util.Base64" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
        request.setAttribute("successMessage", "Successfully Registered !!");
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
    } else {
        request.setAttribute("errorMessage", "Server failed to register!!");
        RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
        rd.forward(request, response);
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
