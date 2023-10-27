package event;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EventUpdateServlet")
public class EventUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public EventUpdateServlet() {
        super();
            }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eventId = request.getParameter("id").trim();
		System.out.println(eventId);
		
		String title = request.getParameter("eventTitle").trim();
		String data_time = request.getParameter("eventDate").trim();
		String location = request.getParameter("eventLocation").trim();
		int NoOfGuest = Integer.valueOf(request.getParameter("eventGuests").trim());
		String theme = request.getParameter("eventTheme").trim();
		String description = request.getParameter("eventDescription").trim();
		
		EventModel event = new EventModel(eventId,title, data_time, location, NoOfGuest, theme, description);
		
		int result = EventController.updateEvent(event);
		if(result == 1) {
				// call only doGet method, if not doPost will be runing again
			  response.sendRedirect(request.getContextPath() + "/EventServlet");
		}
	}

}
