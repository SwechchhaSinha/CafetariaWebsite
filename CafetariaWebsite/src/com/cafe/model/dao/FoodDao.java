package com.cafe.model.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cafe.model.beans.Food;;
public interface FoodDao {
	ArrayList<Food> listAllFood() throws ClassNotFoundException, SQLException;
	List<Food> listAllFood(String category) throws SQLException, ClassNotFoundException;
	Food searchFood(String food_id) throws ClassNotFoundException, SQLException;
	boolean insertFood(Food food) throws SQLException, ClassNotFoundException;
	boolean updateFoodQuantity(String food_id,int qty) throws ClassNotFoundException, SQLException;
	boolean deleteFood(String food_id) throws ClassNotFoundException, SQLException;
	ArrayList<String> listCategory() throws ClassNotFoundException, SQLException;
}
