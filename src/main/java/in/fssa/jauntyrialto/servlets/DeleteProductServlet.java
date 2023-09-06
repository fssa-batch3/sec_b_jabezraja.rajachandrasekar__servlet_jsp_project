package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.service.ProductService;

/**
 * Servlet implementation class DeleteProductServlet
 */
@WebServlet("/product/delete")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int productId = Integer.parseInt(request.getParameter("id"));

		ProductService productService = new ProductService();

		try {
			productService.delete(productId);
			response.sendRedirect(request.getContextPath() + "/products");
			System.out.println("Product with Product Id " + productId + " has been deleted Successfully");
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}

}
