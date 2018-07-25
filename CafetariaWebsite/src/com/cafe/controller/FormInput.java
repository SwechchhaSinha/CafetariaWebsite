package com.cafe.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.beans.Employee;
import com.cafe.model.service.impl.EmployeeServiceImpl;

public class FormInput extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FormInput() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeeServiceImpl service=new EmployeeServiceImpl();
		Employee employee=null;
		HttpSession session=request.getSession();
		try {
			employee=service.searchEmployee(request.getParameter("ein"));
			if(employee==null)
			{
				employee=new Employee();
				employee.setEIN(request.getParameter("ein"));
				employee.setEmployeeName(request.getParameter("name"));
				employee.setHasOpted(request.getParameter("opt_status"));
				employee.setMonthlyFoodExpense(0);
				employee.setPassword(request.getParameter("password"));
				boolean ans=service.signupEmployee(employee);
				if(ans)
				{
					session.setAttribute("message", "Sign Up Successful");
					response.sendRedirect("./EmployeeJsp.jsp");
				}
				else
				{
					System.out.println(employee+"fail");
					session.setAttribute("message", "Some Error Has Occured!! Please try again.");
					response.sendRedirect("./Employee_LogInView.jsp");
					//response.encodeRedirectUrl("./Employee_Signup");
				}
				
			}
			else
			{
				System.out.println(employee+"already exist");
				session.setAttribute("message", "This EIN already exist.");
				response.sendRedirect("./Employee_LogInView.jsp");
				//response.encodeRedirectUrl("./Employee_Signup");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
