package user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.PasswordEncryptionUtil;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public UserServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName").trim();
		String lastName = request.getParameter("lastName").trim();
		String email = request.getParameter("email").trim();
		String password = request.getParameter("password").trim();
		
		String encryptedPassword = PasswordEncryptionUtil.encryptPassword(password);
		
		UserModel user = new UserModel(firstName,lastName,email,encryptedPassword);
		
		int result = UserController.userRegister(user);
		
		
		if(result == 1) {
			 System.out.println("user has been registerd successfully!");
			 RequestDispatcher dispatcher = request.getRequestDispatcher("User/loggin.jsp");
			 dispatcher.forward(request, response);
		}
		
	}


}
