package Controller;

import Model.Authenticator;

import Model.User;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher rd = null;
		System.out.println(username);
		System.out.println(password);

		Authenticator authenticator = new Authenticator();
		String result = authenticator.authenticate(username, password);
		if (result.equals("Success")) {
		 rd = request.getRequestDispatcher("view/Success.jsp");
			User user = new User(username, password);
			request.setAttribute("user", user);
		} else {
			rd = request.getRequestDispatcher("view/Error.jsp");
		}
		rd.forward(request, response);
	}

}