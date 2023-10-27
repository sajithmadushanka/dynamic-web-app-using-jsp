package admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import util.DBConnection;

public class AuthConroller {
		public static String auth(String username, String token) {
			Connection connection = null;
	        Statement statement = null;
	        ResultSet resultSet = null;
	        
	        String adminUsername = null;
	        try {
	
	            connection = DBConnection.getConnection();
	            // Create a Statement
	            statement = connection.createStatement();

	            //  SQL query
	            String sqlQuery = AuthDAO.authQuary(username, token);
	            
	            //execute query 
	            resultSet = statement.executeQuery(sqlQuery);
	            
	            if(!resultSet.next()) {
	            	System.out.println("no user found");
	            	adminUsername = null;
	            }else {
	            	 String _username = resultSet.getString("username_");
		                System.out.println("ID: " + _username);
		                adminUsername = _username;
	            }
	          
	        } catch (SQLException e) {
	        		e.printStackTrace();
	        } finally {
	            // Close the resources in reverse order
	            try {
	                if (resultSet != null) {
	                    resultSet.close();
	                }
	                if (statement != null) {
	                    statement.close();
	                }
	                if (connection != null) {
	                    connection.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        return adminUsername;
		}
		
		
		
}
