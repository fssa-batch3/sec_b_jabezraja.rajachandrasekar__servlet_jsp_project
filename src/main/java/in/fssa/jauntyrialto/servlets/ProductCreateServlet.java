package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.entity.ProductEntity;
import in.fssa.jauntyrialto.service.ProductService;

/**
 * Servlet implementation class ProductCreate
 */
@WebServlet("/ProductCreate")
public class ProductCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/// TEST FOR VALID INPUT TO CREATE PRODUCT

		ProductService productService = new ProductService();

		ProductEntity newProduct = new ProductEntity();
		newProduct.setName("Techno M16");
		newProduct.setSubCategoryId(1);
		newProduct.setDescription("The most high tech");
		newProduct.setPrice(4500.00);
		newProduct.setActive(true);

		try {
			productService.create(newProduct);
		} catch (Exception e) {

			e.printStackTrace();
		}

		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
