package event;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EventDeleteServlet")
public class EventDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public EventDeleteServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		int result = EventController.deleteEvent(id);
		if(result == 1) {
			  response.sendRedirect(request.getContextPath() + "/EventServlet");
		}
	}

}
