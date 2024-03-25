package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddPropertyServlet")
public class AddPropertyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String email = request.getParameter("email");
        String propertyName = request.getParameter("property_name");
        String propertyDesc = request.getParameter("property_desc");
        String propertyType = request.getParameter("property_type");
        String location = request.getParameter("location");
        int price = Integer.parseInt(request.getParameter("price"));
        String uploadDate = request.getParameter("upload_date");
        String status = request.getParameter("status");
        String imageUrl = request.getParameter("image_url");

        // JDBC connection parameters
        String url = "jdbc:mysql://localhost:3306/unistay";
        String username = "root";
        String password = "root";

        // Use try-with-resources to automatically close resources (Connection, Statement, ResultSet)
        try (Connection conn = DriverManager.getConnection(url, username, password)) {
            // Prepare SQL statement
            String sql = "INSERT INTO property_details (email, property_name, property_desc, property_type, location, price, upload_date, status, image_url) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {
                statement.setString(1, email);
                statement.setString(2, propertyName);
                statement.setString(3, propertyDesc);
                statement.setString(4, propertyType);
                statement.setString(5, location);
                statement.setInt(6, price);
                statement.setString(7, uploadDate);
                statement.setString(8, status);
                statement.setString(9, imageUrl);

                // Execute the insert statement
                statement.executeUpdate();

                // Redirect back to the form with success message
                response.sendRedirect("AllPropertyInterface.jsp?success=true");
            }
        } catch (SQLException e) {
            // Log the exception
            Logger.getLogger(AddPropertyServlet.class.getName()).log(Level.SEVERE, "SQL Exception", e);
            // Redirect back to the form with error message
            response.sendRedirect("AllPropertyInterface.jsp?error=true");
        } catch (NumberFormatException e) {
            // Handle the case where price is not a valid integer
            response.sendRedirect("AllPropertyInterface.jsp?error=invalid_price");
        }
    }
}
