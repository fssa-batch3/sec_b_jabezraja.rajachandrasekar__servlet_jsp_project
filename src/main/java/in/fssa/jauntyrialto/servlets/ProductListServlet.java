package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.entity.ProductEntity;
import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.service.ProductService;

@WebServlet("/products")
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ProductService productService;

	@Override
	public void init() throws ServletException {
		productService = new ProductService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Set<ProductEntity> products = productService.findAllProducts();
			request.setAttribute("productList", products);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/all_products.jsp");
			dispatcher.forward(request, response);
		} catch (ServiceException | IOException | ServletException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					"An error occurred while retrieving products.");
		}
	}

}
