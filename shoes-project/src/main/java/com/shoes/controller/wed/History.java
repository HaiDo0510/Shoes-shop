package com.shoes.controller.wed;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.DAO.OrderDao;
import com.shoes.DAO.impl.OrderDaoImpl;
import com.shoes.DAO.impl.ProductDaoImpl;

/**
 * Servlet implementation class History
 */
@WebServlet(urlPatterns = {"/history"})
public class History extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderDao dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public History() {
        super();
        dao = new OrderDaoImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String status = request.getParameter("status");
		if(status.equalsIgnoreCase("Đã Nhận")) {
			response.sendRedirect("./views/wed/history.jsp");
		}else {
			dao.setStatus(id);
			response.sendRedirect("./views/wed/history.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
