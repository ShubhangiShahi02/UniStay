<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession, jakarta.servlet.RequestDispatcher" %>
<%
response.setContentType("text/html");

// Retrieve email attribute from session
HttpSession sess = request.getSession(false);
String email = (String) sess.getAttribute("email");

if (email != null && !email.isEmpty()) { // Check if email is not null or empty
%>
    <script>
        window.alert("Welcome to Home Page");
    </script>
<%
    RequestDispatcher rd1 = request.getRequestDispatcher("/Home.jsp");
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
