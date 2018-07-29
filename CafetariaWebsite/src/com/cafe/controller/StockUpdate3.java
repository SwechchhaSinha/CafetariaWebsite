package com.cafe.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.service.impl.StockManagerServiceImpl;

public class StockUpdate3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		StockManagerServiceImpl sms = new StockManagerServiceImpl();
		String fId = request.getParameter("foodId");
		String deleteMsg="";
		try {
			if(sms.deleteStock(fId.toUpperCase())){
				deleteMsg= "Stock Deletion Successful";
			}
			else{
				deleteMsg= "Stock Deletion failed; Please check Food ID";
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		session.setAttribute("deleteMsg", deleteMsg);
		response.sendRedirect("./Stock_Deletion.jsp");
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
