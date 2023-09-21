package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.jauntyrialto.util.Logger;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/logout")
public class Logout extends HttpServlet {
	Logger logger = new Logger();
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		if (session != null) {

			session.removeAttribute("loggedInEmail");
			logger.debug("Existing Session ID:" + session.getId());

			session.invalidate();
		} else {
			logger.debug("No Session Exists");
		}

		response.sendRedirect(request.getContextPath() + "/pages/login/login.jsp");
	}

}
