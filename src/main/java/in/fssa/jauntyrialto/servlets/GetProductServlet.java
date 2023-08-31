package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.service.ProductService;

/**
 * Servlet implementation class GetProductServlet
 */
@WebServlet("/GetProductServlet")
public class GetProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProductService getproduct = new ProductService();
		PrintWriter out = response.getWriter();
		try {
			out.print(getproduct.findAllProducts());
		} catch (ServiceException e) {

			e.printStackTrace();
		}
//		out.println(product);

		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
