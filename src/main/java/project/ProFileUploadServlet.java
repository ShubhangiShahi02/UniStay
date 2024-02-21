package project;

import java.io.*;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.MultipartConfig;

@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 50,       // 50MB
    maxRequestSize = 1024 * 1024 * 100    // 100MB
)
public class ProFileUploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "jdbc:mysql://localhost:3306/unistay";
        String user = "root";
        String password = "root";

        try {
            Part filePart = request.getPart("profilePic");
            String userEmail = ""; // Initialize user email variable

            // Retrieve user email from the session or database
            // This could vary based on your application's design
            // For this example, we assume it's stored in the session
            HttpSession session = request.getSession();
            if (session != null && session.getAttribute("email") != null) {
                userEmail = (String) session.getAttribute("email");
            }

            if (filePart != null) {
                try (InputStream inputStream = filePart.getInputStream();
                     Connection conn = DriverManager.getConnection(url, user, password)) {

                    // Check if user email is valid
                    if (!userEmail.isEmpty()) {
                        String sql = "INSERT INTO user (email, image) VALUES (?, ?)";
                        try (PreparedStatement statement = conn.prepareStatement(sql)) {
                            statement.setString(1, userEmail);
                            statement.setBlob(2, inputStream);
                            int row = statement.executeUpdate();
                            if (row > 0) {
                                request.setAttribute("Message", "Image uploaded and saved into database");
                            }
                        }
                    } else {
                        request.setAttribute("Message", "User email not found or invalid!");
                    }
                } catch (SQLException ex) {
                    request.setAttribute("Message", "ERROR: " + ex.getMessage());
                    ex.printStackTrace();
                }
            } else {
                request.setAttribute("Message", "No file uploaded!");
            }
        } catch (IOException | ServletException e) {
            request.setAttribute("Message", "ERROR: " + e.getMessage());
            e.printStackTrace();
        }

        request.getRequestDispatcher("/Home.jsp").forward(request, response);
    }

}
