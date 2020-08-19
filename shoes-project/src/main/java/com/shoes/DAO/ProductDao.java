package com.shoes.DAO;

import java.util.List;

import com.shoes.model.Product;


public interface ProductDao {
	void insert(Product product);

	void edit(Product product);

	void delete(int id);
	
	Product get(int id);
	
	List<Product> getAll();
	
	List<Product> getPart1();
	
	List<Product> getPart2();
	
	List<Product> getPart3();
}
