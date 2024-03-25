<%@ page import="java.sql.*" %>

<%
try {
    // Load and register the MySQL JDBC driver
    Class.forName("com.mysql.cj.jdbc.Driver");
    
    // Establish a connection to the database
    String url = "jdbc:mysql://localhost:3306/unistay";
    String username = "root";
    String password = "root";
    Connection con = DriverManager.getConnection(url, username, password);
    
    if (con != null) {
        Statement st = con.createStatement();
    // String q1 = "CREATE TABLE IF NOT EXISTS user (username VARCHAR(100), mobilenumber BIGINT, email VARCHAR(100) PRIMARY KEY, password VARCHAR(100), reset_token VARCHAR(255))";
     //String q2 ="CREATE TABLE image (id INT AUTO_INCREMENT PRIMARY KEY, image LONGBLOB,email VARCHAR(255) )";
     //String q3 ="CREATE TABLE admin (email varchar(255) primary key, password varchar(200) )";
     //String q4 ="INSERT INTO admin (email, password) VALUES ('unistay@gmail.com', 'uni@stay24')";
    // String q5 = "CREATE TABLE user_roles_purposes ( email VARCHAR(255) PRIMARY KEY, you_are VARCHAR(255) NOT NULL, you_are_here_to VARCHAR(255) NOT NULL, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP)";
      String q6 = "CREATE TABLE property_details( email VARCHAR(255) PRIMARY KEY, property_name VARCHAR(255) NOT NULL, property_desc VARCHAR(255) NOT NULL, property_type VARCHAR(50) NOT NULL, location VARCHAR(255) NOT NULL, price INT NOT NULL, upload_date DATE, status ENUM('Available', 'Rented') DEFAULT 'Available', image_url VARCHAR(255))";
    // System.out.print(q1);
     // st.execute(q1);
     // System.out.print(q2);
     // st.execute(q2);
     // System.out.print(q3);
     // st.execute(q3);
     // st.execute(q4);
     // st.execute(q5);
     st.execute(q6);
      System.out.println("Table Created");
        con.close();
    } else {
        System.out.println("Failed to establish a database connection");
    }
} catch (Exception e) {
    System.out.println("Error occurred: " + e.getMessage());
    e.printStackTrace();
}
%>
