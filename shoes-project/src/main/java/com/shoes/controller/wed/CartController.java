package com.shoes.controller.wed;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.DAO.impl.ProductDaoImpl;
import com.shoes.model.Cart;
import com.shoes.model.Product;
import com.shoes.model.ProductID;

@WebServlet(urlPatterns={"/Cart"})
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductDaoImpl dao;
    
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		int id = Integer.parseInt(request.getParameter("id"));
		dao = new ProductDaoImpl();
		Product p = dao.get(id);
		ProductID pID = new ProductID(p.getId(), p.getImage(), p.getName(), p.getPrice(), 1);
		cart.ThemHang(pID);
		session.setAttribute("cart", cart);
		response.sendRedirect("./views/wed/products-user.jsp");
		
//		RequestDispatcher rd=request.getRequestDispatcher("./views/wed/products-user.jsp");
//		rd.forward(request, response);
		 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
