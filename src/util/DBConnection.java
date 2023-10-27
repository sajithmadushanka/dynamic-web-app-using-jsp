package util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	 // Database URL
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/event_planning_system";


 // Database credentials
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "12345";
    
    public static Connection getConnection() {
        Connection connection = null;
        try {
            // Load the JDBC driver (
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // Check if the connection is successful
            if (connection != null) {
                System.out.println("Connected to the database.");
            } else {
                System.out.println("Failed to connect to the database.");
            }
        } catch (ClassNotFoundException e) {
            System.err.println("Database driver not found.");
            e.printStackTrace();
            
        } catch (SQLException e) {
            System.err.println("Database connection failed.");
            e.printStackTrace();
        }
        return connection;
    }

    public static void main(String[] args) {
    	getConnection();
	}
}
