<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie, jakarta.servlet.RequestDispatcher, jakarta.servlet.http.HttpSession" %>
<%
    response.setContentType("text/html");
    HttpSession sess = request.getSession(false);
    if (sess != null && sess.getAttribute("username") != null) {
        RequestDispatcher rd1 = request.getRequestDispatcher("/Home.jsp");
        rd1.include(request, response);
%>
    <script>
        window.alert("Welcome to Home Page");
    </script>
<%
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


