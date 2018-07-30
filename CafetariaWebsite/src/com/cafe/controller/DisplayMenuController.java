package com.cafe.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe.model.beans.Menu;
import com.cafe.model.service.impl.EmployeeServiceImpl;

public class DisplayMenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DisplayMenuController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeeServiceImpl service=new EmployeeServiceImpl();
		HttpSession session=request.getSession(false);
		try {
			Menu menu=service.displayMenu();
			session.setAttribute("menu", menu);
			response.sendRedirect("./Menu.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
