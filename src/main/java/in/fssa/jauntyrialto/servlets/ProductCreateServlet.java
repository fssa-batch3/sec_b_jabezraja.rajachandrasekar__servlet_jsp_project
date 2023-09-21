package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class ProductCreateServlet
 */
@WebServlet("/product/create")
public class ProductCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProductEntity product = new ProductEntity();
		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();

		try {
			Integer subCategoryId = Integer.parseInt(request.getParameter("subCategory"));
			product.setSubCategoryId(subCategoryId);

			product.setName(request.getParameter("productName"));
			product.setDescription(request.getParameter("description"));

			String price = request.getParameter("price");
			double pri = Double.parseDouble(price);
			product.setPrice(pri);

			product.setMainImg(request.getParameter("mainImg"));
			product.setSubImg1(request.getParameter("subImg1"));
			product.setSubImg2(request.getParameter("subImg2"));
			product.setSubImg3(request.getParameter("subImg3"));

			productService.create(product);

			out.println("Product Created Successfully");
			response.sendRedirect(request.getContextPath() + "/product/new");
		} catch (NumberFormatException e) {
			e.printStackTrace();
			out.println("Invalid price format. Please enter a valid number.");
		} catch (ValidationException | ServiceException e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
	}
}
