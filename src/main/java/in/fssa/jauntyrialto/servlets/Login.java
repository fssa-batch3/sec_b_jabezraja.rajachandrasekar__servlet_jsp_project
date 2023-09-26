package in.fssa.jauntyrialto.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.jauntyrialto.entity.UserEntity;
import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.service.UserService;
import in.fssa.jauntyrialto.util.Logger;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = new Logger();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");

		String password = request.getParameter("password");

		UserService userService = new UserService();

		try {

			UserEntity user = new UserEntity();
			user.setEmail(email);
			user.setPassword(password);
			userService.userLogin(user);

			HttpSession session = request.getSession();
			session.setAttribute("loggedEmail", email);

			response.sendRedirect(request.getContextPath() + "/index");

		} catch (ServiceException e) {

			response.sendRedirect(request.getContextPath() + "/pages/login/login.jsp?errorMessage=" + e.getMessage());
			logger.error(e);
		}
	}

}
