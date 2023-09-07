package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.entity.ProductEntity;
import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.exception.ValidationException;
import in.fssa.jauntyrialto.service.ProductService;

/**
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet("/product/update")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ProductEntity product = new ProductEntity();
		try {
			if (request.getParameter("name") == null || request.getParameter("name").isEmpty()) {
				System.out.println("Product Name cannot be null or empty");
			} else {
				product.setName(request.getParameter("name"));
			}
			if (request.getParameter("description") == null || request.getParameter("description").isEmpty()) {
				System.out.println("Description cannot be null or empty");
			} else {
				product.setDescription(request.getParameter("description"));
			}
			product.setSubCategoryId(Integer.parseInt(request.getParameter("subid")));
			product.setId(Integer.parseInt(request.getParameter("id")));
			product.setPrice(Double.parseDouble(request.getParameter("price")));

			ProductService productService = new ProductService();

			int productId = Integer.parseInt(request.getParameter("id"));

			productService.update(productId, product);
			response.sendRedirect(request.getContextPath() + "/products");
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		}
	}

}
