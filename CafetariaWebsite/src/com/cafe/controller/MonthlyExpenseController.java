package com.cafe.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.service.impl.EmployeeServiceImpl;

public class MonthlyExpenseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MonthlyExpenseController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeeServiceImpl service=new EmployeeServiceImpl();
		int expense=0;
		LocalDate date=LocalDate.now();
		int month=date.getMonthValue();
		int year=date.getYear();
		HttpSession session=request.getSession(false);
		try {
			expense=service.monthlyFoodExpense((String)session.getAttribute("ein"));
			session.setAttribute("expense",expense );
			session.setAttribute("month", month);
			session.setAttribute("year", year);
			response.sendRedirect("./MonthlyExpense.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
