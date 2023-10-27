package event;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EventServlet")
public class EventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EventServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			ArrayList<EventModel> eventList = new ArrayList<EventModel>();
			
			eventList = EventController.retriveData();
			
			request.setAttribute("eventList", eventList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Event/Event.jsp");
			dispatcher.forward(request, response);
			


	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String title = request.getParameter("eventTitle");
			String data_time = request.getParameter("eventDate");
			String location = request.getParameter("eventLocation");
			int NoOfGuest = Integer.valueOf(request.getParameter("eventGuests"));
			String theme = request.getParameter("eventTheme");
			String description = request.getParameter("eventDescription");
			
			EventModel event = new EventModel(null,title, data_time, location, NoOfGuest, theme, description);
			
			int result = EventController.saveEvent(event);
			
			if(result == 1) {
				commonLogic(request, response);
			}
		
	}
	private void commonLogic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<EventModel> eventList = EventController.retriveData();
        request.setAttribute("eventList", eventList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("Event/Event.jsp");
        dispatcher.forward(request, response);
    }
	
	

}
