package admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AdminServlet() {
        super();}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

				String username = request.getParameter("username");
				String token = request.getParameter("password");
				
				String authResult = AuthConroller.auth(username, token);
				if(authResult != null) {
					System.out.println("User name is :" + authResult);
					request.setAttribute("authResult", authResult);
					
					 RequestDispatcher dispatcher = request.getRequestDispatcher("/Admin/Dashboard.jsp");
					 dispatcher.forward(request, response);
				}else {
					System.out.println("there is not match");
					authResult = "error";
					
					 request.setAttribute("error", authResult);
					    
					 RequestDispatcher dispatcher = request.getRequestDispatcher("/Admin/Auth.jsp");
					 dispatcher.forward(request, response);
				}
				
				
			
	}

}
