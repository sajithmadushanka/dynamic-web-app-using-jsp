package event;

public class EventModel {
	private final String eventId;
	private final String title;
	private final String dateAndTime;
	private final String location;
	private final int NoOfGuest;
	private final String theme;
	private final String description;
	
	public EventModel(String eventId ,String title, String dateAndTime, String location, int noOfGuest, String theme,
			String description) {
		this.eventId = eventId;
		this.title = title;
		this.dateAndTime = dateAndTime;
		this.location = location;
		NoOfGuest = noOfGuest;
		this.theme = theme;
		this.description = description;
	}
	
	public String getEventId() {
		return eventId;
	}
	public String getTitle() {
		return title;
	}

	public String getDateAndTime() {
		return dateAndTime;
	}

	public String getLocation() {
		return location;
	}

	public int getNoOfGuest() {
		return NoOfGuest;
	}

	public String getTheme() {
		return theme;
	}

	public String getDescription() {
		return description;
	}

}
