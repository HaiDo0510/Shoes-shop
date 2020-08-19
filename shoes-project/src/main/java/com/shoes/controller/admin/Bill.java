package com.shoes.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.DAO.impl.OrderDaoImpl;
import com.shoes.DAO.impl.ProductDaoImpl;
import com.shoes.model.Order;
import com.shoes.model.Product;

/**
 * Servlet implementation class Bill
 */
public class Bill extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String list = "/views/admin/admin-listBill.jsp";
    private OrderDaoImpl dao; 
    
    public Bill() {
        super();
        dao = new OrderDaoImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("listBill")) {
			forward = list;
			List<Order> orders = dao.getAll();
			request.setAttribute("orders", orders);
		}  else if(action.equalsIgnoreCase("delete")) {
			int id = Integer.parseInt(request.getParameter("id"));
			dao.delete(id);	
			forward = list;
			List<Order> orders = dao.getAll();
			request.setAttribute("orders", orders);
		} else {
			forward = "";
		}
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
