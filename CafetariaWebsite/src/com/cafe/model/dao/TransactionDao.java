package com.cafe.model.dao;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
//import java.util.List;

import com.cafe.model.beans.Transaction;

public interface TransactionDao {
	boolean insertTransaction(Transaction transaction) throws ClassNotFoundException, SQLException;
	
	

	//ArrayList<Transaction> searchTransaction(String transaction_date) throws ClassNotFoundException, SQLException;



	ArrayList<Transaction> searchTransaction(LocalDate transaction_date) throws ClassNotFoundException, SQLException;
}
