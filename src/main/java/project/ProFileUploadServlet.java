package project;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 50,       // 50MB
    maxRequestSize = 1024 * 1024 * 100    // 100MB
)
public class ProFileUploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Database connection details
        String url = "jdbc:mysql://localhost:3306/unistay";
        String user = "root";
        String password = "root";

        // Get the uploaded file
        Part filePart = request.getPart("profilePic");
        InputStream inputStream = filePart.getInputStream();

        // Get the email from the session
        String userEmail = (String) request.getSession().getAttribute("userEmail"); // Updated from "username" to "email"

        Connection conn = null;
        String message = null;

        try {
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            
            // Delete the existing image for this email
            deleteExistingImage(conn, userEmail); // Updated from "email" to "userEmail"

            // Create SQL query to insert the image into the database
            String sql = "INSERT INTO image (image, email) VALUES (?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setBlob(1, inputStream);
            statement.setString(2, userEmail); // Updated from "email" to "userEmail"

            // Execute the query
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "Image uploaded and saved into database";
            }
        } catch (SQLException | ClassNotFoundException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            request.setAttribute("Message", message);
            getServletContext().getRequestDispatcher("/user/MyProfile.jsp").forward(request, response);
        }
    }
    
    // Method to delete the existing image for the given email
    private void deleteExistingImage(Connection conn, String userEmail) throws SQLException { // Updated from "email" to "userEmail"
        String sql = "DELETE FROM image WHERE email = ?";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, userEmail); // Updated from "email" to "userEmail"
        statement.executeUpdate();
    }
}
