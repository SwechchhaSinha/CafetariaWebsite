package com.cafe.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.service.impl.EmployeeServiceImpl;
import com.cafe.model.service.impl.StockManagerServiceImpl;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeeServiceImpl service=new EmployeeServiceImpl();
		HttpSession session;
		String ein=(String)request.getParameter("username");
		String password=(String)request.getParameter("password");
		String result;
		try {
			result=service.Login(ein, password);
			if(result.equals("admin"))
			{
				session=request.getSession();
				session.setAttribute("ein", "ADMIN");
				session.setAttribute("success", "Admin Login Successful");
				response.sendRedirect("./CafeteriaManager.jsp");
			}
			else if(result.equals("Login Successful"))
			{
				session=request.getSession();
				session.setAttribute("ein", ein);
				session.setAttribute("addOn", service.addON());
				session.setAttribute("menu", service.displayMenu());
				response.sendRedirect("./EmployeeJsp.jsp");
			}
			else if(result.equals("Please enter correct password"))
			{
				request.setAttribute("failure", result);
				response.sendRedirect("./Employee_LogInView.jsp");
			}
			else
			{
				request.setAttribute("failure", result);
				response.sendRedirect("./Employee_LogInView.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
