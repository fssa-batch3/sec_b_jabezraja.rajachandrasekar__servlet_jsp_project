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

@WebServlet("/productsbycategory")
public class FindProductByCategoryId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String pdtIdParam = request.getParameter("id");
			if (pdtIdParam != null && !pdtIdParam.isEmpty()) {
				int categoryId = Integer.parseInt(pdtIdParam);

				ProductService productService = new ProductService();
				Set<ProductEntity> products = productService.findProductsByCategoryId(categoryId);
				System.out.println(products);
				request.setAttribute("productList", products);
				RequestDispatcher rd = request.getRequestDispatcher("/pages/products/products_categoryid.jsp");
				rd.forward(request, response);
			} else {
				response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Category ID parameter is missing or empty.");
			}
		} catch (ServiceException | ServletException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					"An error occurred while retrieving products.");
		} catch (NumberFormatException e) {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Category ID format.");
		}
	}
}
