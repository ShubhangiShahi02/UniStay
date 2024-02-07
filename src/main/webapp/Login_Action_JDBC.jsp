<%@page import="java.sql.*" %>
<%@page import="java.security.MessageDigest" %>
<%@page import="java.security.NoSuchAlgorithmException" %>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");
session.setAttribute("email", email);

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "root");

    // Hash the password before comparing it with the database
    MessageDigest md = MessageDigest.getInstance("SHA-256");
    byte[] hashedPasswordBytes = md.digest(password.getBytes("UTF-8"));
    
    // Convert the byte array to hexadecimal string inline
    StringBuilder sb = new StringBuilder();
    for (byte b : hashedPasswordBytes) {
        sb.append(String.format("%02x", b));
    }
    String hashedPassword = sb.toString();

    String qr = "SELECT * FROM user WHERE email=? AND password=?";
    PreparedStatement ps = con.prepareStatement(qr);
    ps.setString(1, email);
    ps.setString(2, hashedPassword); // Compare with the hashed password from the database
    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        response.sendRedirect("Home.jsp");
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
%>
        <script>alert("Incorrect email or password");</script>
<%
    }
    con.close();
} catch (ClassNotFoundException | SQLException | NoSuchAlgorithmException e) {
    out.println(e);
}
%>
