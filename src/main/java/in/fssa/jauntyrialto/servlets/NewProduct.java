package in.fssa.jauntyrialto.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.jauntyrialto.entity.SubCategoryEntity;
import in.fssa.jauntyrialto.exception.ServiceException;
import in.fssa.jauntyrialto.service.SubCategoryService;

/**
 * Servlet implementation class NewProduct
 */
@WebServlet("/product/new")
public class NewProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SubCategoryService subCategoryService = new SubCategoryService();
		List<SubCategoryEntity> subCategoryList = new ArrayList<SubCategoryEntity>();

		try {
			subCategoryList = subCategoryService.getAllSubCategories();

			request.setAttribute("subCategoryList", subCategoryList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/form.jsp");
			dispatcher.forward(request, response);

		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}

}
