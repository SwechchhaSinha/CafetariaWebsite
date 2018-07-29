package com.cafe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.beans.Food;
import com.cafe.model.service.StockManagerService;
import com.cafe.model.service.impl.StockManagerServiceImpl;

/**
 * Servlet implementation class AllStock
 */
public class StockByCategoryResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public StockByCategoryResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StockManagerService service=new StockManagerServiceImpl();
		try {
			PrintWriter out=response.getWriter();
			
			List<Food> stock=service.displayFood(request.getParameter("category"));
			out.println(stock);
			HttpSession session=request.getSession(false);
			session.setAttribute("StockByCategory", stock);
			response.sendRedirect("./Stock_ViewStockByCategory.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
