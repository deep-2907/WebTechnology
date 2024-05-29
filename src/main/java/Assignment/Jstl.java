package Assignment;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fetchData")
public class Jstl extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Update these variables with your database credentials
    private static final String DB_URL = "jdbc:mysql://localhost:3306/crm";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "123456";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Establishing database connection
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL query to fetch data from the table
            String sql = "SELECT * FROM deals";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            // Storing the result in request attribute
            request.setAttribute("resultSet", rs);

            // Forwarding the request to JSP page
            request.getRequestDispatcher("/jstl.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // Closing resources
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
