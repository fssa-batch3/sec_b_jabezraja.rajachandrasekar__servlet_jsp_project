package in.fssa.jauntyrialto.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.entity.*;
import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.exception.ValidationException;
import in.fssa.jauntyrialto.service.OrderService;
import in.fssa.jauntyrialto.util.Logger;

/**
 * Servlet implementation class order
 */
@WebServlet("/order")
public class CreateOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logger = new Logger();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		OrderEntity order = new OrderEntity();
		OrderService service = new OrderService();

		try {
			int userId = Integer.parseInt(request.getParameter("userId"));
			int productId = Integer.parseInt(request.getParameter("productId"));
			int qty = Integer.parseInt(request.getParameter("qty"));
			double total = Double.parseDouble(request.getParameter("total"));
			int pin = Integer.parseInt(request.getParameter("pin"));
			String landmark = request.getParameter("landmark");
			String address = request.getParameter("address");

			order.setUserId(userId);
			order.setProductId(productId);
			order.setQty(qty);
			order.setTotal(total);
			order.setPinCode(pin);
			order.setLandMark(landmark);
			order.setAddress(address);			

			service.create(order);
			response.sendRedirect(request.getContextPath() + "/payment.jsp");

		} catch (ValidationException | ServiceException | NumberFormatException e) {
			logger.error(e);
		}
	}
}