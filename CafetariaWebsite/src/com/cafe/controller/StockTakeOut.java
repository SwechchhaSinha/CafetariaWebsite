package com.cafe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.service.impl.StockManagerServiceImpl;
public class StockTakeOut extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String foodId = request.getParameter("foodId");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		StockManagerServiceImpl sms = new StockManagerServiceImpl();
		String msgTakeOut="";
		int status=0;
		try {
			status = sms.outputStock(foodId, quantity);
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
			if(status == 0){
				msgTakeOut = "Food ID doesn't exists";
			}
			else if(status == 1){
				msgTakeOut = "Please enter a valid quantity";
			}
			else if(status==2){
				msgTakeOut = "Food quantity successfully updated!";
			}
			
			else if(status == 3){
				msgTakeOut = "Sorry, Food quantity couldn't be updated";
			}
			
			else{
				msgTakeOut = "Not enough quanity present";
			}
			session.setAttribute("msgTakeOut", msgTakeOut);
			PrintWriter out = response.getWriter();
//			out.println(msgTakeOut);
			response.sendRedirect("./Stock_TakeOut2.jsp");;
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
