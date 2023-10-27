package event;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetEventsServlet")
public class GetEventsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public GetEventsServlet() {
        super();
  
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<EventModel> eventList = new ArrayList<EventModel>();
		
		eventList = EventController.retriveData();
		
		request.setAttribute("eventList", eventList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Event/EventsPage.jsp");
		dispatcher.forward(request, response);
	}

}
