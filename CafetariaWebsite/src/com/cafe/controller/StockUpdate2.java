package com.cafe.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.service.impl.StockManagerServiceImpl;

public class StockUpdate2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		StockManagerServiceImpl sms = new StockManagerServiceImpl();
		LocalDate date1 = LocalDate.now();
		String fId = request.getParameter("foodId");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int price = Integer.parseInt(request.getParameter("price")); 
		String updateMsg="";
		try {
			if(sms.updateStock(fId, quantity, price, date1)){
				updateMsg= "Stock Updation Successful";
			}
			else{
				updateMsg= "Stock Updation failed";
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("updateMsg", updateMsg);
		response.sendRedirect("./Stock_Updation.jsp");
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
