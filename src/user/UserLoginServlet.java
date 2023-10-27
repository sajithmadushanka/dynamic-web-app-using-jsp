package user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.PasswordEncryptionUtil;


@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public UserLoginServlet() {super();}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email").trim();
		String password = request.getParameter("password").trim();
		
		
		UserModel user = UserController.userLogin(email, password);
		if(user != null) {
			boolean state = PasswordEncryptionUtil.checkPassword(password, user.getPassword());
			if(state == true) {
				System.out.println("valid user");
				request.setAttribute("user", user);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("User/profile.jsp");
				dispatcher.forward(request, response);
			}
			else {
				request.setAttribute("invalidPs", true);
				RequestDispatcher dispatcher = request.getRequestDispatcher("User/loggin.jsp");
				dispatcher.forward(request, response);
			}
		}
		else {
			request.setAttribute("emailValidation", "email is Invalid!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("User/loggin.jsp");
			 dispatcher.forward(request, response);
		}
	
	}

}
