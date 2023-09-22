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

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/user/update")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		UserService userService = new UserService();
		UserEntity user = new UserEntity();
		PrintWriter out = response.getWriter();

		user.setName(request.getParameter("name"));
		user.setPhone(Long.parseLong(request.getParameter("phone")));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));

		try {

			userService.update(id, user);
			out.print("User has been updated sucessfully");
			response.sendRedirect(request.getContextPath() + "/profile");
		} catch (ServiceException | ValidationException e) {
			e.printStackTrace();
		}

	}
}
