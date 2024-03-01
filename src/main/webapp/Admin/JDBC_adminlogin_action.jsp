<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.RequestDispatcher" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="jakarta.servlet.ServletException" %>

<%
// Retrieving email and password from form submission
String email = request.getParameter("email");
String password = request.getParameter("password");

// Storing email in session (not used in this snippet, but can be useful)
session.setAttribute("email", email);

try {
    // Establishing database connection
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unistay", "root", "unistayroot");
    
    // Preparing SQL query
    String query = "SELECT * FROM admin WHERE email=? AND password=?";
    PreparedStatement ps = con.prepareStatement(query);
    ps.setString(1, email);
    ps.setString(2, password);
    
    // Executing the query
    ResultSet rs = ps.executeQuery();
    
    // Checking if a matching record is found
    if(rs.next()) {
        // Authentication successful, redirect to dashboard
        session.setAttribute("adminLoggedIn", true); // Corrected attribute name
        response.sendRedirect("Dashboard.jsp");
    } else {
        // Authentication failed, display error message
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
        %><script>window.alert("Email or password is incorrect");</script><%
    }
} catch(Exception e) {
    // Handling exceptions
    e.printStackTrace(); // Better to log this instead
    // Display a generic error message to the user
    out.println("An error occurred. Please try again later.");
}
%>
