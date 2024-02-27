<%@ page import="java.io.*,java.util.*" %>
<%@ page import="jakarta.servlet.ServletException" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
// Invalidate the session to logout the user
HttpSession sess= request.getSession(false);
if (session != null) {
    session.invalidate();
}

// Redirect the user to the login page after logout
response.sendRedirect("index.jsp");
%>
