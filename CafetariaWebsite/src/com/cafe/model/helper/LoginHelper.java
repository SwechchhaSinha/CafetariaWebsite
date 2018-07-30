package com.cafe.model.helper;
import java.sql.SQLException;

import com.cafe.model.beans.Employee;
import com.cafe.model.dao.impl.EmployeeDaoImpl;
import com.cafe.model.service.impl.EmployeeServiceImpl;


public class LoginHelper {
	public String Login(String employeeEin, String password) throws ClassNotFoundException, SQLException
	{
		EmployeeDaoImpl employeeDaoImpl=new EmployeeDaoImpl();
		Employee employee=new Employee();
		employee=employeeDaoImpl.searchEmployee(employeeEin);
		if(employee==null)
			return "User does not exist. Please sign up!!";
			
		if(employee.getPassword().equals(password))
		{
			if(employeeEin.equals("admin"))
				return "admin";
			else
				return "Login Successful";
		}
		else
		{
			return "Please enter correct password";

		}
	}
}