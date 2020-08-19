package com.shoes.controller.wed;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.DAO.OrderDao;
import com.shoes.DAO.impl.OrderDaoImpl;
import com.shoes.model.Order;

/**
 * Servlet implementation class OrderController
 */
@WebServlet(urlPatterns={"/Order"})
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public OrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String time = java.time.LocalDateTime.now().toString();
		int totalPrice = Integer.parseInt(request.getParameter("totalPrice"));
		String status = "Đang giao...";
		if(totalPrice == 0 ) {
			
		} else {
		Order o = new Order(email, time, totalPrice, status);
		OrderDao dao = new OrderDaoImpl();
		dao.insert(o);
		}
		response.sendRedirect("./views/wed/TransactionSuccess.jsp");
	}

}
