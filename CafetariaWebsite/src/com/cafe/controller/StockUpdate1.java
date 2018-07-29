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

import com.cafe.model.beans.Food;
import com.cafe.model.service.impl.StockManagerServiceImpl;

public class StockUpdate1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		StockManagerServiceImpl sms = new StockManagerServiceImpl();
		LocalDate date1 = LocalDate.now();
		String name = request.getParameter("name");
		String fId = request.getParameter("foodId");
		String category = request.getParameter("category");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		Food food = new Food(fId.toUpperCase(), name, category, quantity);
		int price = Integer.parseInt(request.getParameter("price")); 
		String insertMsg="";
		try {
			if(sms.inputStock(food, price, date1)){
				insertMsg= "Stock Inserted Successfully";
			}
			else{
				insertMsg= "Stock Insertion failed";
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("insertMsg", insertMsg);
		response.sendRedirect("./Stock_Insertion.jsp");
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
