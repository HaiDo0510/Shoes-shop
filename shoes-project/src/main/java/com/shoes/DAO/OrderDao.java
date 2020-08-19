package com.shoes.DAO;

import java.util.List;

import com.shoes.model.Order;
import com.shoes.model.Product;
import com.shoes.model.User;

public interface OrderDao {
	Order get(int id);
	
	void delete(int id);
	
	void deleteAll(int idUser);
	
	List<Order> getAll(String email);
	
	List<Order> getAll();
	
	public void insert(Order o);
	
	void setStatus(int id);
}
