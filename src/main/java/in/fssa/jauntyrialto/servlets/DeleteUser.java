package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.exception.ValidationException;
import in.fssa.jauntyrialto.service.UserService;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet("/user/delete")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int userId = Integer.parseInt(request.getParameter("id"));

		UserService userService = new UserService();

		try {
			userService.delete(userId);
			response.sendRedirect(request.getContextPath() + "/users");
			System.out.println("User with user Id " + userId + " has been deleted Successfully");
		} catch (ServiceException | ValidationException e) {
			e.printStackTrace();

		}
	}
}
