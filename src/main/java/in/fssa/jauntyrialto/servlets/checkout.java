package in.fssa.jauntyrialto.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.exception.ValidationException;
import in.fssa.jauntyrialto.model.User;
import in.fssa.jauntyrialto.service.UserService;
import in.fssa.jauntyrialto.util.Logger;

/**
 * Servlet implementation class order
 */
@WebServlet("/checkout")
public class checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = new Logger();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String loggedEmail = (String) request.getSession().getAttribute("loggedEmail");

			if (loggedEmail != null) {
				UserService userService = new UserService();
				User user = userService.findUserByEmail(loggedEmail);
				request.setAttribute("user", user);

				String qty = request.getParameter("qty");

				if (qty != null && !qty.isEmpty()) {
					int quantity = Integer.parseInt(qty);

					request.setAttribute("quantity", quantity);
				} else {
					int quantity = 1;
					request.setAttribute("quantity", quantity);
				}

				RequestDispatcher requst = request.getRequestDispatcher("/pages/cart/ckeckout.jsp");
				requst.forward(request, response);
			}

		} catch (ValidationException | ServiceException e) {
			logger.error(e);
		}
	}
}
