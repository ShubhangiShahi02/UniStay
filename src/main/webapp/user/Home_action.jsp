<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession, jakarta.servlet.RequestDispatcher" %>
<%
response.setContentType("text/html");

// Retrieve user email attribute from session
HttpSession sess = request.getSession(false); // Do not create a new session if one doesn't exist
String userEmail = (String) session.getAttribute("userEmail");

if (userEmail != null && !userEmail.isEmpty()) { // Check if user email is not null or empty
%>
    <script>
        window.alert("Welcome to Home Page");
    </script>
<%
    RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
    rd1.include(request, response);
} else {
%>
    <script>
        window.alert("Login to open Home Page");
        window.location.href = "index.jsp"; // Redirect to login page if not logged in
    </script>
<%
}
%>
