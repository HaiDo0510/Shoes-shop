package com.shoes.DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shoes.DAO.UserDao;
import com.shoes.dbConnection.MySQLConnection;
import com.shoes.model.User;





public class UserDaoImpl implements UserDao{
	Connection co;
	
	
	@Override
	public void insert(User user) {
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			StringBuilder sql = new StringBuilder("insert into user (firstName, lastName, email, passWord) values(?,?,?,?)");
			co = mCon.getCon();
			PreparedStatement ps = co.prepareStatement(sql.toString());
			
			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getPassWord());
			ps.executeUpdate();
			mCon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	@Override
	public void edit(User user) {
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			StringBuilder sql = new StringBuilder("update user set firstName = ?,lastName = ?, email = ?, passWord = ? where id = ?");
			co = mCon.getCon();
			PreparedStatement ps = co.prepareStatement(sql.toString());
			
			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getPassWord());
			ps.setInt(5, user.getId());
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
			String sql = "delete from user where id = ?";
			PreparedStatement psmt = co.prepareStatement(sql);
			psmt.setInt(1, id);
			psmt.executeUpdate();
			psmt.close();
			conn.closeConnection();
		} catch (Exception ex) {
			System.out.println(ex);
		}
		
	}

	@Override
	public User get(int id) {
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			co = mCon.getCon();
			String sql = "select * from user where id =?";
			PreparedStatement ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				User u = new User(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				u.setId(rs.getInt("id"));
				mCon.closeConnection();
				return u;
			}
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new User( 0, "", "", "", "");
		
	}

	@Override
	public List<User> getAll() {
		List<User> user = new ArrayList<User>();
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			String sql = "select * from user";
			Statement st = mCon.getCon().createStatement();
			ResultSet rs = st.executeQuery(sql);
			User u = null;
			while (rs.next()) {
				u = new User(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				u.setId(rs.getInt("id"));

				user.add(u);
			}
			mCon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return user;
	}

	@Override
	public boolean checkExistUsername(String email, String password) {
		boolean duplicate = false;	
		try {
			MySQLConnection conn = new MySQLConnection();
			co = conn.getCon();
			String sql = "select * from user where email = ? and password = ?";
			PreparedStatement psmt = co.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, password);
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

	@Override
	public String getName(String email) {
		String fName;
		String lName;
		String name;
		try {
			
			MySQLConnection conn = new MySQLConnection();
			co = conn.getCon();
			String sql = "select * from user where email = ?";
			PreparedStatement psmt = co.prepareStatement(sql);
			psmt.setString(1, email);
			ResultSet resultSet = psmt.executeQuery();
			while (resultSet.next()) {
				fName = resultSet.getString(2);
				lName = resultSet.getString(3);
				name = fName + lName;
				return name;
			}
			psmt.close();
			conn.closeConnection();
		} catch (Exception ex) {
			System.out.println(ex);
		}
		return null;
	}

	
	

}
