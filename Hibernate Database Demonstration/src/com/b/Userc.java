package com.b;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.c.Userdeo;



public class Userc extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
	System.out.println("hello");

		HttpSession session = request.getSession(true);
		try {
			Userdeo userDAO = new Userdeo();
			userDAO.addUserDetails(userName, password, email, phone, city);
			response.sendRedirect("success");
		} catch (Exception e) {

			e.printStackTrace();
		}

	}
}
