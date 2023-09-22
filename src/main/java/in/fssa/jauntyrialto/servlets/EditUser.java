package in.fssa.jauntyrialto.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class EditUser
 */
@WebServlet("/user/edit")
public class EditUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = new Logger();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			UserEntity user = new UserService().findById(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("user", user);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/edit_user.jsp");
			dispatcher.forward(request, response);
		} catch (ServiceException | ValidationException | NumberFormatException | IOException | ServletException e) {
			logger.error(e);
			throw new ServletException(e.getMessage());
		}
	}

}
