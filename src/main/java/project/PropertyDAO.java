package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PropertyDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/unistay";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";

    public List<Property> getAllProperties() {
        List<Property> properties = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            String query = "SELECT * FROM properties";
            stmt = conn.prepareStatement(query);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Property property = new Property();
                property.setId(rs.getInt("id"));
                property.setName(rs.getString("name"));
                property.setType(rs.getString("type"));
                property.setLocation(rs.getString("location"));
                property.setPrice(rs.getDouble("price"));
                properties.add(property);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return properties;
    }
}
