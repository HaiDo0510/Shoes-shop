package com.shoes.DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shoes.DAO.AdminDao;
import com.shoes.dbConnection.MySQLConnection;
import com.shoes.model.Admin;

public class AdminDaoImpl implements AdminDao{
	Connection co;
	
	
	@Override
	public void insert(Admin admin) {
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			StringBuilder sql = new StringBuilder("insert into admin (firstName, lastName, email, passWord) values(?,?,?,?)");
			co = mCon.getCon();
			PreparedStatement ps = co.prepareStatement(sql.toString());
			
			ps.setString(1, admin.getFirstName());
			ps.setString(2, admin.getLastName());
			ps.setString(3, admin.getEmail());
			ps.setString(4, admin.getPassWord());
			ps.setInt(5, admin.getId());

			ps.executeUpdate();
			mCon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	@Override
	public void edit(Admin admin) {
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			StringBuilder sql = new StringBuilder("update admin set firstName = ?,lastName = ?, email = ?, passWord = ? where id = ?");
			co = mCon.getCon();
			PreparedStatement ps = co.prepareStatement(sql.toString());
			
			ps.setString(1, admin.getFirstName());
			ps.setString(2, admin.getLastName());
			ps.setString(3, admin.getEmail());
			ps.setString(4, admin.getPassWord());
			ps.setInt(5, admin.getId());

			ps.executeUpdate();
			mCon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void delete(int id) {
		try {
			MySQLConnection conn = new MySQLConnection();
			co = conn.getCon();
			String sql = "delete from admin where id = ?";
			PreparedStatement psmt = co.prepareStatement(sql);
			psmt.setInt(1, id);
			ResultSet resultSet = psmt.executeQuery();
			psmt.close();
			conn.closeConnection();
		} catch (Exception ex) {
			System.out.println(ex);
		}
		
	}

	@Override
	public Admin get(int id) {
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			co = mCon.getCon();
			String sql = "select * from admin where id =?";
			PreparedStatement ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Admin a = new Admin(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				a.setId(rs.getInt("id"));
				mCon.closeConnection();
				return a;
			}
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new Admin( 0, "", "", "", "");
		
	}

	@Override
	public List<Admin> getAll() {
		List<Admin> admin = new ArrayList<Admin>();
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			String sql = "select * from admin";
			Statement st = mCon.getCon().createStatement();
			ResultSet rs = st.executeQuery(sql);
			Admin a = null;
			while (rs.next()) {
				a = new Admin(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				a.setId(rs.getInt("id"));

				admin.add(a);
			}
			mCon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return admin;
	}

	@Override
	public boolean checkExistAdminname(String email) {
		boolean duplicate = false;	
		try {
			MySQLConnection conn = new MySQLConnection();
			co = conn.getCon();
			String sql = "select * from admin where email = ?";
			PreparedStatement psmt = co.prepareStatement(sql);
			psmt.setString(1, email);
			ResultSet resultSet = psmt.executeQuery();
			if (resultSet.next()) {
				duplicate = true;
			}
			psmt.close();
			conn.closeConnection();
		} catch (Exception ex) {
			System.out.println(ex);
		}
		return duplicate;
	}


	
}
