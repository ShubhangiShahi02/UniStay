<%@ page import="java.io.*,java.util.*,jakarta.servlet.*,jakarta.servlet.http.*,java.sql.*" %>
<%
    response.setContentType("text/html");
    
    // Retrieve form data
    String youAre = request.getParameter("you_are");
    String youAreHereTo = request.getParameter("you_are_here_to");
    String email = request.getParameter("email");

    // Check if the user has already filled out the form in this session
    HttpSession sess = request.getSession();
    if (session.getAttribute("formFilled") != null) {
        // User has already filled out the form, redirect to Post_Property_Part.jsp
        response.sendRedirect("Post_Property_Part.jsp");
    } else {
        // JDBC connection parameters
        String url = "jdbc:mysql://localhost:3306/unistay";
        String username = "root";
        String password = "root";

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Establish JDBC connection
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);

            // Check if email already exists in the database
            String checkEmailQuery = "SELECT * FROM user_roles_purposes WHERE email = ?";
            pstmt = conn.prepareStatement(checkEmailQuery);
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                // If email already exists, redirect to Post_Property_Part.jsp
                response.sendRedirect("Post_Property_Part.jsp");
            } else {
                // Prepare SQL statement for insertion
                String insertQuery = "INSERT INTO user_roles_purposes (you_are, you_are_here_to, email) VALUES (?, ?, ?)";
                pstmt = conn.prepareStatement(insertQuery);
                pstmt.setString(1, youAre);
                pstmt.setString(2, youAreHereTo);
                pstmt.setString(3, email);

                // Execute the insertion statement
                pstmt.executeUpdate();

                // Mark the form as filled in the session
                session.setAttribute("formFilled", true);

                // Redirect to success page
                response.sendRedirect("Post_Property_Part.jsp");
            }
        } catch (Exception e) {
            out.println(e);
        } finally {
            // Close resources in finally block
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                out.println(e);
            }
        }
    }
%>
