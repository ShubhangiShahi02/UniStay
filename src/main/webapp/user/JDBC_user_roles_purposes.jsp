<%@ page import="java.io.*,java.util.*,jakarta.servlet.*,jakarta.servlet.http.*,java.sql.*" %>
<%
    response.setContentType("text/html");
    

    // Retrieve form data
    String youAre = request.getParameter("you_are");
    String youAreHereTo = request.getParameter("you_are_here_to");
    String email = request.getParameter("email");

    // Check if the user has already filled out the form in this session
    HttpSession Session = request.getSession();
    if (session.getAttribute("formFilled") != null) {
        // User has already filled out the form, redirect to Post_Property_Part.jsp
        response.sendRedirect("Post_Property_Part.jsp");
    } else {
        // JDBC connection parameters
        String url = "jdbc:mysql://localhost:3306/unistay";
        String username = "root";
        String password = "root";

        try {
            // Establish JDBC connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);

            // Prepare SQL statement
            String sql = "INSERT INTO user_roles_purposes (you_are, you_are_here_to, email) VALUES (?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, youAre);
            pstmt.setString(2, youAreHereTo);
            pstmt.setString(3, email);

            // Execute the statement
            pstmt.executeUpdate();

            // Mark the form as filled in the session
            session.setAttribute("formFilled", true);

            // Close resources
            pstmt.close();
            conn.close();

            // Redirect to success page
            response.sendRedirect("Post_Property_Part.jsp");
        } catch (Exception e) {
            out.println(e);
        }
    }
%>
