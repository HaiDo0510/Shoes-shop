package com.shoes.DAO;

import java.util.List;

import com.shoes.model.Admin;

public interface AdminDao {
	void insert(Admin admin);

	void edit(Admin admin);

	void delete(int id);
	
	Admin get(int id);
	
	List<Admin> getAll();
	
	boolean checkExistAdminname(String email);
}
