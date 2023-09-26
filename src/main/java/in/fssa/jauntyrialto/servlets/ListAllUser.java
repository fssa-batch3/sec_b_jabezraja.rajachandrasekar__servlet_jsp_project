package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.entity.UserEntity;
import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.service.UserService;

/**
 * Servlet implementation class ListAllUser
 */
@WebServlet("/users")
public class ListAllUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserService userService;

	@Override
	public void init() throws ServletException {
		userService = new UserService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Set<UserEntity> users = userService.findAll();
			request.setAttribute("userList", users);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/admin/all_users.jsp");
			dispatcher.forward(request, response);
		} catch (ServiceException | IOException | ServletException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					"An error occurred while retrieving products.");
		}
	}

}
