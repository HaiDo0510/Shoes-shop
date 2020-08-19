package com.shoes.controller.wed;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.DAO.impl.ProductDaoImpl;
import com.shoes.model.Product;


@WebServlet(urlPatterns = {"/productWed"})
public class ProductController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private ProductDaoImpl dao = new ProductDaoImpl();
	private String list = "/views/wed/products-user.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("listProduct")) {
			List<Product> products = dao.getAll();
			request.setAttribute("products", products);
			forward = list;
		} 
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
