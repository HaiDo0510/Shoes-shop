package com.shoes.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.DAO.impl.AdminDaoImpl;
import com.shoes.DAO.impl.UserDaoImpl;

/**
 * Servlet implementation class Login
 */

@WebServlet(urlPatterns={"/login"})
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("./checkout.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		AdminDaoImpl a = new AdminDaoImpl();
		
		if(a.checkExistAdminname(email)) {
			response.sendRedirect("/shoes-project/views/admin/admin-index.jsp");
		}
		else {
			response.sendRedirect("/shoes-project/views/wed/account.jsp");
		}
	}

}
