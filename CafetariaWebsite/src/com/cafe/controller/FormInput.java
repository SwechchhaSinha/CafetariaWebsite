package com.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe.model.beans.Employee;

public class FormInput extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FormInput() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employee employee=new Employee();
		employee.setEIN(request.getParameter("ein"));
		employee.setEmployeeName(request.getParameter("name"));
		employee.setHasOpted(request.getParameter("optStatus"));
		employee.setMonthlyFoodExpense(0);
		employee.setPassword(request.getParameter("password"));
		employee.setEIN(request.getParameter("ein"));
		ServletContext context=getServletContext();
		context.setAttribute("employee", employee);
		
	}

}
