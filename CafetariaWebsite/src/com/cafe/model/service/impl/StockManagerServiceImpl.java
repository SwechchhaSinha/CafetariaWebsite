package com.cafe.model.service.impl;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.cafe.model.beans.Food;
import com.cafe.model.beans.Menu;
import com.cafe.model.beans.Transaction;
import com.cafe.model.service.StockManagerService;

import com.cafe.model.dao.impl.FoodDaoImpl;
import com.cafe.model.dao.impl.MenuDaoImpl;
import com.cafe.model.dao.impl.TransactionDaoImpl;

public class StockManagerServiceImpl implements StockManagerService {
	FoodDaoImpl foodDaoImpl = new FoodDaoImpl();
	TransactionDaoImpl transactionDaoImpl = new TransactionDaoImpl();
	MenuDaoImpl menuDaoImpl = new MenuDaoImpl();

	@Override
	public boolean inputStock(Food food, int price, LocalDate date) throws ClassNotFoundException, SQLException {
		boolean status1 = foodDaoImpl.insertFood(food);
		LocalDate date1 = LocalDate.now();// Change
		Transaction t = new Transaction(date1, food.getF_id(), food.getQuantity(), price);
		System.out.println(t);
		boolean status2 = transactionDaoImpl.insertTransaction(t);
		if (status1 == true && status2 == true)
			return true;
		return false;
	}

	@Override
	public boolean updateStock(String foodId, int quantity, int price, LocalDate date1)
			throws ClassNotFoundException, SQLException {
		Food f=foodDaoImpl.searchFood(foodId);
		if(f.getF_id()==null)
		{
			return false;
		}
		boolean status1 = foodDaoImpl.updateFoodQuantity(foodId,
				f.getQuantity() + quantity);
		Date date = Date.valueOf(date1);

		boolean status2 = transactionDaoImpl.insertTransaction(new Transaction(date1, foodId, quantity, price));
		if (status1 == true && status2 == true)
			return true;
		return false;

	}

	@Override
	public int outputStock(String foodId, int quantity) throws ClassNotFoundException, SQLException {
		Food food=foodDaoImpl.searchFood(foodId);
		if(food.getF_id()==null)
		{
			return 0;
		}
		int currentQuantity = food.getQuantity();
		if(quantity<=0)
			return 1;
		if (quantity <= currentQuantity) {
			boolean status1 = foodDaoImpl.updateFoodQuantity(foodId, currentQuantity - quantity);
			if(status1==true)
				return 2;
			else 
				return 3;
		}

		else{
			return 4;
		}
	}

	@Override
	public boolean updateMenu(Menu menu) throws ClassNotFoundException, SQLException {
		return menuDaoImpl.updateMenu(menu);

	}

	@Override

	public boolean generateReport(LocalDate date) throws ClassNotFoundException, SQLException, IOException
	{
		ArrayList<Transaction> transactions=transactionDaoImpl.searchTransaction(date);
		if(!transactions.isEmpty())
		{
		File report=new File("C:\\Users\\ve00ym016\\report_"+date);
		FileOutputStream fileOutputStream=new FileOutputStream(report);
		DataOutputStream stream=new DataOutputStream(fileOutputStream);
		for(Transaction t:transactions)
		{
			
			stream.writeChars(t.toString());
		}
		return true;
		}
		else
			return false;

	}

	@Override
	public ArrayList<Food> displayFood() throws ClassNotFoundException, SQLException {
		//System.out.println(foodDaoImpl.listAllFood());
		return (foodDaoImpl.listAllFood());
	}

	@Override
	public List<Food> displayFood(String category) throws ClassNotFoundException, SQLException {
		return foodDaoImpl.listAllFood(category);

	}

	@Override
	public boolean deleteStock(String foodId) throws ClassNotFoundException, SQLException {

		return foodDaoImpl.deleteFood(foodId);
	}

	@Override
	public ArrayList<String> listCategory() throws ClassNotFoundException, SQLException {
		return foodDaoImpl.listCategory();
	}
}
