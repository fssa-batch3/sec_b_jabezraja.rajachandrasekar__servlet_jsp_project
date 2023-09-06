package in.fssa.jauntyrialto.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.entity.ProductEntity;
import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.service.ProductService;

/**
 * Servlet implementation class EditProductServlet
 */
@WebServlet("/product/edit")
public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int productId = Integer.parseInt(request.getParameter("id"));

		ProductService productService = new ProductService();

		try {
			ProductEntity product = productService.findProductByProductId(productId);
			request.setAttribute("editProduct", product);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/edit_product.jsp");
			dispatcher.forward(request, response);
		} catch (ServiceException e) {
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while retrieving product.");
		} catch (NumberFormatException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while retrieving product.");
		} catch (IOException | ServletException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred.");
		}
	}

}
