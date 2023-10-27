package user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import util.DBConnection;

public class UserController {
	public static int userRegister(UserModel user) {
		Connection connection = null;
        Statement statement = null;
        int  result = 0;
        
        try {

            connection = DBConnection.getConnection();
            // Create a Statement
            statement = connection.createStatement();

            //  SQL query
            String sqlQuery =UserDAO.insertQuuery(user);
            
            //execute query 
            result = statement.executeUpdate(sqlQuery);
          
      	 
          
        } catch (SQLException e) {
        		e.printStackTrace();
        } finally {
            // Close the resources in reverse order
            try {
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
        return result;
	}
	//--------------------------------------------------------
	public static UserModel userLogin(String email, String password) {
		Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        UserModel user = null;
        try {

            connection = DBConnection.getConnection();
            // Create a Statement
            statement = connection.createStatement();

            //  SQL query
            String sqlQuery =UserDAO.loginQuary(email, password);
            
            //execute query 
            resultSet = statement.executeQuery(sqlQuery);
            
            if(!resultSet.next()) {
            	System.out.println("no user found");

            }else {
            	 String ecnPasswoed = resultSet.getString("password_");
            	 String firstName = resultSet.getString("firstName_");
            	 String lastName = resultSet.getString("lastName_");
            	 String email_ = resultSet.getString("email_");
	               
            	 user = new UserModel(firstName, lastName,email_, ecnPasswoed);
	            
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
        return user;
	}
}
