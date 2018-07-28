package com.cafe.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.beans.Employee;
import com.cafe.model.service.impl.EmployeeServiceImpl;

public class OptFood extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OptFood() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EmployeeServiceImpl service = new EmployeeServiceImpl();
		Employee employee;
		HttpSession session = request.getSession(false);
		try {
			employee = service.searchEmployee((String) session.getAttribute("ein"));
			String optStatus = employee.getHasOpted();
			if (optStatus.equalsIgnoreCase("y")) {
				session.setAttribute("optStatus", "Already Subscribed for the food services");
				response.sendRedirect("./OptFood.jsp");
			} else {
				session.setAttribute("optStatus", "not opted");
				response.sendRedirect("./OptFood.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
