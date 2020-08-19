package com.shoes.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.DAO.impl.ProductDaoImpl;
import com.shoes.model.Product;
import com.shoes.model.User;

/**
 * Servlet implementation class ProductController
 */
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String add = "/views/admin/admin-addproduct.jsp";
    private String list = "/views/admin/admin-listProduct.jsp";
    private ProductDaoImpl dao;   
    
    public ProductController() {
        super();
        dao = new ProductDaoImpl();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("listProduct")) {
			forward = list;
			List<Product> products = dao.getAll();
			request.setAttribute("products", products);
		} else if(action.equalsIgnoreCase("edit")) {
			forward = add;
			
			int id = Integer.parseInt(request.getParameter("id"));
			Product product = dao.get(id);
			request.setAttribute("product", product);
		} else if(action.equalsIgnoreCase("delete")) {
			int id = Integer.parseInt(request.getParameter("id"));
			dao.delete(id);
			
			forward = list;
			List<Product> products = dao.getAll();
			request.setAttribute("products", products);
		} else {
			forward = add;
		}
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product product = new Product();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		product.setImage(request.getParameter("image"));
		product.setName(request.getParameter("name"));
		product.setPrice(Integer.parseInt(request.getParameter("price")));
		
		String id = request.getParameter("id");
		
		if( id==null || id.isEmpty()) {
			dao.insert(product);
		} else {
			int id1 = Integer.parseInt(id);
			product.setId(id1);
			dao.edit(product);
		}
		List<Product> products = dao.getAll();
		request.setAttribute("products", products);
		
		RequestDispatcher view = request.getRequestDispatcher(list);
		view.forward(request, response);
	}

}
