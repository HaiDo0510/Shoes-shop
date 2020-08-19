package com.shoes.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoes.DAO.impl.UserDaoImpl;
import com.shoes.model.User;

/**
 * Servlet implementation class ManagerUserController
 */
@WebServlet( name="UserController", urlPatterns={"/UserController"} )
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String add = "./views/admin/admin-adduser.jsp";
    private String list = "/views/admin/admin-listUser.jsp";
    private UserDaoImpl dao;
   
    public UserController() {
        super();
        dao = new UserDaoImpl();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("listUser")) {
			forward = list;
			List<User> users = dao.getAll();
			request.setAttribute("users", users);
		} else if(action.equalsIgnoreCase("edit")) {
			forward = add;
			
			int id = Integer.parseInt(request.getParameter("id"));
			User user = dao.get(id);
			request.setAttribute("user", user);
		} else if(action.equalsIgnoreCase("delete")) {
			int id = Integer.parseInt(request.getParameter("id"));
			dao.delete(id);
			
			forward = list;
			List<User> users = dao.getAll();
			request.setAttribute("users", users);
		} else {
			User user = new User();
			forward = add;
		}
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setEmail(request.getParameter("email"));
		user.setPassWord(request.getParameter("passWord"));
		
		String id = request.getParameter("id");
		
		if( id==null || id.isEmpty()) {
			dao.insert(user);
		} else {
			int id1 = Integer.parseInt(id);
			user.setId(id1);
			dao.edit(user);
		}
		List<User> users = dao.getAll();
		request.setAttribute("users", users);
		
		RequestDispatcher view = request.getRequestDispatcher(list);
		view.forward(request, response);
		/*
		 * String firstName = request.getParameter("firstName"); String lastName =
		 * request.getParameter("lastName"); String email =
		 * request.getParameter("email"); String passWord =
		 * request.getParameter("passWord");
		 * 
		 * User u = new User(firstName, lastName, email, passWord);
		 * System.out.println(">>>>>>>>>>>>"+ u); UserDaoImpl user = new UserDaoImpl();
		 * 
		 * user.insert(u); response.sendRedirect("./admin-index.jsp");
		 */
	}

}
