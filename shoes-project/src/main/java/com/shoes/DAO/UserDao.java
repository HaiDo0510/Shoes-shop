package com.shoes.DAO;

import java.util.List;

import com.shoes.model.Product;
import com.shoes.model.User;

public interface UserDao {
	void insert(User user);

	void edit(User user);

	void delete(int id);
	
	User get(int id);
	
	List<User> getAll();
	
	boolean checkExistUsername(String email, String password);
	
	String getName(String email);
}
