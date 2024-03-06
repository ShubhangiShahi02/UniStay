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
       String q4 ="INSERT INTO admin (email, password) VALUES ('unistay@gmail.com', 'uni@stay24')";
       //System.out.print(q1);
      //st.execute(q1);
       //System.out.print(q2);
      //st.execute(q2);
        //System.out.print(q3);
       //st.execute(q3);
       st.execute(q4);
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
