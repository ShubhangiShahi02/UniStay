<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
try {
    // Invalidate the session
    HttpSession sess = request.getSession(false); // Use "request.getSession(false)" instead of "session"
    if (sess != null) { // Check if session is not null
        sess.invalidate();
    }
    
    // Redirect the user to the login page
    response.sendRedirect("Login.jsp");
} catch (Exception e) {
    // Handle exceptions appropriately
    e.printStackTrace();
}
%>
