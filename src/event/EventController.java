package event;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.DBConnection;

public class EventController {
		public static ArrayList<EventModel> retriveData() {
			Connection connection = null;
	        Statement statement = null;
	        ResultSet resultSet = null;
	        
	        ArrayList<EventModel> eventList = new ArrayList<EventModel>();
	        
	        try {
	
	            connection = DBConnection.getConnection();
	            // Create a Statement
	            statement = connection.createStatement();

	            //  SQL query
	            String sqlQuery = EventDAO.getAllEvent();
	            
	            //execute query 
	            resultSet = statement.executeQuery(sqlQuery);
	            
	            while(resultSet.next()) {
	            	 String eventId = resultSet.getString("eventId_");
	            	 String title = resultSet.getString("title_");
	            	 String date_time = resultSet.getString("dateAndTime_");
	            	 String location = resultSet.getString("location_");
	            	 int NoOfGuest = resultSet.getInt("NoOfGuest_");
	            	 String theme = resultSet.getString("theme_");
	            	 String description = resultSet.getString("description_");
	            	 
	            	 EventModel event = new EventModel(eventId,title,date_time,location,NoOfGuest,theme,description);
	            	 eventList.add(event);
	            	 
	            	 
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
	        return eventList;
		}
		// create a event------------------------------
		public static int saveEvent(EventModel event) {
			Connection connection = null;
	        Statement statement = null;
	        int  result = 0;
	        
	        try {
	
	            connection = DBConnection.getConnection();
	            // Create a Statement
	            statement = connection.createStatement();

	            //  SQL query
	            String sqlQuery =EventDAO.insertEvent(event);
	            
	            //execute query 
	            result = statement.executeUpdate(sqlQuery);
	            System.out.println(result);
	      	 
	          
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
		
		// update event-------------------------------
		public static int updateEvent(EventModel event) {
			Connection connection = null;
	        Statement statement = null;
	        int  result = 0;
	        
	        try {
	
	            connection = DBConnection.getConnection();
	            // Create a Statement
	            statement = connection.createStatement();

	            //  SQL query
	            String sqlQuery =EventDAO.updateEvent(event);
	            
	            //execute query 
	            result = statement.executeUpdate(sqlQuery);
	            System.out.println(result);
	      	 
	          
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
		// delete-------------------------------------
		public static int deleteEvent(String id) {
			Connection connection = null;
	        Statement statement = null;
	        int  result = 0;
	        
	        try {
	
	            connection = DBConnection.getConnection();
	            // Create a Statement
	            statement = connection.createStatement();

	            //  SQL query
	            String sqlQuery =EventDAO.deleteEvent(id);
	            
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
}
