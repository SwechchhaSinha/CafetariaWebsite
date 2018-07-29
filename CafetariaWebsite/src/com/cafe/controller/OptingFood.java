package com.cafe.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.service.impl.EmployeeServiceImpl;

public class OptingFood extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OptingFood() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		EmployeeServiceImpl service=new EmployeeServiceImpl();
		String optingStatus=request.getParameter("optingStatus");
		if(optingStatus.equalsIgnoreCase("y"))
		{
			session.setAttribute("opted", "yes");
			try {
				service.totalMonthlyExpense((String)session.getAttribute("ein"), 50);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("./AddOn.jsp");
		}
		else
		{
			session.setAttribute("opted", "no");
			response.sendRedirect("./AddOn.jsp");
		}
	}

}
