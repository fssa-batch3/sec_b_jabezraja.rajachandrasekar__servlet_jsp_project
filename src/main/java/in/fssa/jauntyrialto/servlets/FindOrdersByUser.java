package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.entity.OrderEntity;
import in.fssa.jauntyrialto.entity.ProductEntity;
import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.exception.ValidationException;
import in.fssa.jauntyrialto.model.User;
import in.fssa.jauntyrialto.service.OrderService;
import in.fssa.jauntyrialto.service.ProductService;
import in.fssa.jauntyrialto.service.UserService;

/**
 * Servlet implementation class FindOrdersByUser
 */
@WebServlet("/ordersbyuser")
public class FindOrdersByUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String loggedEmail = (String) request.getSession().getAttribute("loggedEmail");

			if (loggedEmail != null) {
				UserService userService = new UserService();
				User user = userService.findUserByEmail(loggedEmail);
				int userId = user.getId();

				OrderService orderService = new OrderService();
				Set<OrderEntity> orderList = orderService.findOrdersByUserId(userId);

				request.setAttribute("orderList", orderList);
				
	            List<ProductEntity> productList = new ArrayList<>();

	            for (OrderEntity order : orderList) {
	                int productId = order.getProductId(); // Assuming 'getProductId' is the method to get the product ID from an order
	                ProductService productService = new ProductService();
	                ProductEntity product = productService.findProductByProductId(productId);
	                productList.add(product);
	            }

	            request.setAttribute("productList", productList);
	            
				RequestDispatcher rd = request.getRequestDispatcher("/pages/nav/order.jsp");
				rd.forward(request, response);
			} else {
				response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "User not authenticated.");
			}
		} catch (ServiceException | ValidationException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					"An error occurred while retrieving orders.");
		} catch (NumberFormatException e) {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid User ID format.");
		}
	}
}
