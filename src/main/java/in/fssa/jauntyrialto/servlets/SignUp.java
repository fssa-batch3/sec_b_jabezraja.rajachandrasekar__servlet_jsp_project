package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.entity.UserEntity;
import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.exception.ValidationException;
import in.fssa.jauntyrialto.service.UserService;
import in.fssa.jauntyrialto.util.Logger;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/signUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = new Logger();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserEntity user = new UserEntity();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		long phonenumber = Long.parseLong(request.getParameter("phone"));

		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		user.setPhone(phonenumber);
		user.setConfirmPassword(confirmPassword);
		UserService userservice = new UserService();
		try {

			userservice.create(user);
			response.sendRedirect(request.getContextPath() + "/pages/login/login.jsp");

		} catch (ServiceException | ValidationException e) {
			logger.error(e);
		}

	}
}