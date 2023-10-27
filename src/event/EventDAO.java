package event;

public class EventDAO {
		public static String getAllEvent(){
			 String sqlQuery = "SELECT * FROM event";
			 
			 return sqlQuery;
		}
		
		public static String insertEvent(EventModel event) {
				String sqlQuery = "INSERT INTO event(title_,dateAndTime_,location_,NoOfGuest_,theme_,description_) "
						+ "values('"+event.getTitle()+"', '"+event.getDateAndTime()+"', '"+event.getLocation()+"' , "
								+ "'"+event.getNoOfGuest()+"','"+event.getTheme()+"', '"+event.getDescription()+"') ";
				return sqlQuery;
		}
		
		public static String updateEvent(EventModel event) {
			String sqlQuery = "UPDATE event SET "
			        + "title_ = '" + event.getTitle() + "', "
			        + "dateAndTime_ = '" + event.getDateAndTime() + "', "
			        + "location_ = '" + event.getLocation() + "', "
			        + "NoOfGuest_ = '" + event.getNoOfGuest() + "', "
			        + "theme_ = '" + event.getTheme() + "', "
			        + "description_ = '" + event.getDescription() + "' "
			        + "WHERE eventId_ = '" + event.getEventId() + "'";

			return sqlQuery;
	}
	public static String deleteEvent(String id) {
		String sqlQuery = "DELETE FROM event "
				+ "WHERE eventId_= '" + id + "';";
		return sqlQuery;
				
	}
}
