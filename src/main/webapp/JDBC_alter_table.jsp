<%@ page import="java.sql.*" %>

<%
try {
    // Load and register the MySQL JDBC driver
    Class.forName("com.mysql.cj.jdbc.Driver");
    
    // Establish a connection to the database
    String url = "jdbc:mysql://localhost:3306/unistay";
    String username = "root";
    String password = "unistayroot";
    Connection con = DriverManager.getConnection(url, username, password);
    
    if (con != null) {
        Statement st = con.createStatement();
        
        // Alter table to add image column
        String alterQuery = "ALTER TABLE image ADD COLUMN email VARCHAR(255)";
        st.execute(alterQuery);
        System.out.println("Image column added to user table");
        
        con.close();
    } else {
        System.out.println("Failed to establish a database connection");
    }
} catch (Exception e) {
    System.out.println("Error occurred: " + e.getMessage());
    e.printStackTrace();
}
%>
