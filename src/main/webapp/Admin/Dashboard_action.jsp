<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.io.*,java.util.*" %>

<%
// Check if the admin is logged in
Boolean adminLoggedIn = (Boolean) session.getAttribute("adminLoggedIn");
if (adminLoggedIn != null && adminLoggedIn) {
    // Admin is logged in, do nothing
%>
    <script>
        window.alert("Welcome to Dashboard Page");
    </script>
<%
    RequestDispatcher rd1 = request.getRequestDispatcher("Dashboard.jsp");
    rd1.include(request, response);
} else {
    // Admin is not logged in, redirect to login page
%>
    <script>
        window.alert("Login to open Dashboard Page");
        window.location.href = "index.jsp"; // Redirect to login page if not logged in
    </script>
<%
}
%>

