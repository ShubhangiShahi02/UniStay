<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie, jakarta.servlet.RequestDispatcher, jakarta.servlet.http.HttpSession" %>
<%
    response.setContentType("text/html");
    HttpSession sess = request.getSession(false);
    String email = (String) sess.getAttribute("username"); // Retrieve email attribute
    
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
    </script>
<%
        RequestDispatcher rd2 = request.getRequestDispatcher("/index.jsp");
        rd2.include(request, response);
    }
%>
