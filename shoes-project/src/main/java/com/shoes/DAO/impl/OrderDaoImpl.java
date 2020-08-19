package com.shoes.DAO.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shoes.DAO.OrderDao;
import com.shoes.dbConnection.MySQLConnection;
import com.shoes.model.Order;

public class OrderDaoImpl implements OrderDao{
	private Connection co;
	@Override
	public Order get(int id) {
		MySQLConnection mcon;
		try {
			mcon = new MySQLConnection();
			co = mcon.getCon();
			String sql = "select * from order1 where id =?";
			PreparedStatement ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Order o = new Order(id, rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
				return o;
			}
			mcon.closeConnection();
			
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		MySQLConnection mcon;
		try {
			mcon = new MySQLConnection();
			co = mcon.getCon();
			String sql = "delete from order1 where id = ?";
			PreparedStatement ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			ps.close();
			mcon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void deleteAll(int idUser) {
		// TODO Auto-generated method stub
		MySQLConnection mcon;
		try {
			mcon = new MySQLConnection();
			co = mcon.getCon();
			String sql = "delete from order1";
			PreparedStatement ps = co.prepareStatement(sql);
			ps.executeUpdate();
			ps.close();
			mcon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Order> getAll(String email) {
		// TODO Auto-generated method stub
		MySQLConnection mcon;
		List<Order> a = new ArrayList<Order>();
		try {
			mcon = new MySQLConnection();
			co = mcon.getCon();
			String sql = "select * from order1 where email_user = '" + email + "'";
			Statement st = co.createStatement();
			ResultSet rs = st.executeQuery(sql);
			Order o = null;
			while(rs.next()) {
				o = new Order(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
				a.add(o);
			}
			mcon.closeConnection();
			return a;
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void insert(Order o) {
		MySQLConnection mcon;
		try {
			mcon = new MySQLConnection();
			co = mcon.getCon();
			StringBuilder sql = new StringBuilder("insert into order1 (email_user, time, total_price, status) values(?,?,?,?)");
			PreparedStatement ps = co.prepareStatement(sql.toString());
			ps.setString(1, o.getEmail());
			ps.setString(2, o.getTime());
			ps.setInt(3, o.getTotal_price());
			ps.setString(4, o.getStatus());
			ps.executeUpdate();
			mcon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Order> getAll() {
		MySQLConnection mcon;
		List<Order> a = new ArrayList<Order>();
		try {
			mcon = new MySQLConnection();
			co = mcon.getCon();
			String sql = "select * from order1";
			Statement st = co.createStatement();
			ResultSet rs = st.executeQuery(sql);
			Order o = null;
			while(rs.next()) {
				o = new Order(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
				a.add(o);
			}
			mcon.closeConnection();
			return a;
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void setStatus(int id) {
		MySQLConnection mcon;
		try {
			mcon = new MySQLConnection();
			co = mcon.getCon();
			StringBuilder sql = new StringBuilder("update order1 set status = ? where id = ?");
			PreparedStatement ps = co.prepareStatement(sql.toString());
			ps.setString(1, "Đã Nhận");
			ps.setInt(2, id);
			ps.executeUpdate();
			mcon.closeConnection();
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
