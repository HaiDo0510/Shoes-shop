package com.shoes.controller.wed;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoes.DAO.impl.AdminDaoImpl;
import com.shoes.DAO.impl.UserDaoImpl;
import com.shoes.model.Cart;

/**
 * Servlet implementation class Login
 */

@WebServlet(urlPatterns = { "/loginUser" })
public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("./checkout.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		UserDaoImpl u = new UserDaoImpl();
		
		String name = u.getName(email);
		Cookie names = new Cookie("name", name);
		Cookie emails = new Cookie("email", email);

		// Set expiry date after 24 Hrs for both the cookies.
		names.setMaxAge(60 * 60 * 24);
		emails.setMaxAge(60 * 60 * 24);

		// Add both the cookies in the response header.
		response.addCookie(names);
		response.addCookie(emails);
		
		// session
		Cart cart = new Cart();
		HttpSession session = request.getSession();
   	 	session.setAttribute("cart", cart);

		if (u.checkExistUsername(email, password)) {
			response.sendRedirect("/shoes-project/views/wed/index-user.jsp");
		} else {
			response.sendRedirect("/shoes-project/views/wed/account.jsp");
		}
	}

}
