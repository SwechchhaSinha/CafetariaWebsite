package com.cafe.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.beans.AddOn;
import com.cafe.model.service.impl.EmployeeServiceImpl;

public class AddOnAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddOnAddController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		String selectedItemId = request.getParameter("AddOnChoice");
		EmployeeServiceImpl service = new EmployeeServiceImpl();
		AddOn addon;
		int price = 0;
		try {
			addon = service.searchAddOn(selectedItemId);
			price = addon.getAddOnPrice();
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			if (quantity > 0) {
				int choice = service.buyAddOn(selectedItemId, Integer.parseInt(request.getParameter("quantity")));
				if (choice == 0) {
					service.totalMonthlyExpense((String) session.getAttribute("ein"), price * quantity);
					session.setAttribute("addOn", service.addON());
					response.sendRedirect("./AddOnMoreOrSubmit.jsp");
				} else {
					session.setAttribute("addOnError", "This much quantity not available");
					response.sendRedirect("./AddOnError.jsp");
				}
			}
			else
			{
				session.setAttribute("addOnError", "Please Enter Quantity more than 0");
				response.sendRedirect("./AddOnError.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
