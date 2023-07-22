package com.trycoding.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trycoding.connection.DbCon;
import com.trycoding.dao.UserDao;
import com.trycoding.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/user-login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=Utf-8");
		
		try(PrintWriter out =response.getWriter()) {
			
		
			
			String email = request.getParameter("login-email");
			String password = request.getParameter("login-password");
			
			try {
				UserDao uDao = new UserDao(DbCon.getConnetion());
				User user =uDao.userLogin(email, password);
				
				if (user != null) {
					out.print(" Login Done ");
					request.getSession().setAttribute("auth", user);
					response.sendRedirect("index.jsp");
					
				}else {
					out.print("login failed ");
					
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
			out.print("this is login servlet "+email +"   "+ password);
		}
	}

}
