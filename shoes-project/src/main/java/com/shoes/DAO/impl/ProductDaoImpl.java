package com.shoes.DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shoes.DAO.ProductDao;
import com.shoes.dbConnection.MySQLConnection;
import com.shoes.model.Product;
import com.shoes.model.User;

public class ProductDaoImpl implements ProductDao{
	Connection co;
	@Override
	public void insert(Product product) {
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			StringBuilder sql = new StringBuilder("insert into product (name, image, price) values(?,?,?)");
			co = mCon.getCon();
			PreparedStatement ps = co.prepareStatement(sql.toString());
			
			ps.setString(1, product.getName());
			ps.setString(2, product.getImage());
			ps.setInt(3, product.getPrice());
			ps.executeUpdate();
			mCon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	@Override
	public void edit(Product product) {
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			StringBuilder sql = new StringBuilder("update product set name = ?,image = ?, price = ? where id = ?");
			co = mCon.getCon();
			PreparedStatement ps = co.prepareStatement(sql.toString());
			
			ps.setString(1, product.getName());
			ps.setString(2, product.getImage());
			ps.setInt(3, product.getPrice());
			ps.setInt(4, product.getId());
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
			String sql = "delete from product where id = ?";
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
	public Product get(int id) {
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			co = mCon.getCon();
			String sql = "select * from product where id =?";
			PreparedStatement ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Product p = new Product(rs.getString(3), rs.getString(2), rs.getInt(4));
				p.setId(rs.getInt("id"));
				mCon.closeConnection();
				return p;
			}
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new Product( 0, "", "", 0);
	}

	@Override
	public List<Product> getAll() {
		List<Product> product = new ArrayList<Product>();
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			String sql = "select * from product";
			Statement st = mCon.getCon().createStatement();
			ResultSet rs = st.executeQuery(sql);
			Product p = null;
			while (rs.next()) {
				p = new Product(rs.getString(3), rs.getString(2), rs.getInt(4));
				p.setId(rs.getInt("id"));

				product.add(p);
			}
			mCon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return product;
	}

	

	@Override
	public List<Product> getPart1() {
		List<Product> product = new ArrayList<Product>();
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			String sql = "select * from product limit 0,6";
			Statement st = mCon.getCon().createStatement();
			ResultSet rs = st.executeQuery(sql);
			Product p = null;
			while (rs.next()) {
				p = new Product(rs.getString(3), rs.getString(2), rs.getInt(4));
				p.setId(rs.getInt("id"));

				product.add(p);
			}
			mCon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return product;
	}

	@Override
	public List<Product> getPart2() {
		List<Product> product = new ArrayList<Product>();
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			String sql = "select * from product limit 6,6";
			Statement st = mCon.getCon().createStatement();
			ResultSet rs = st.executeQuery(sql);
			Product p = null;
			while (rs.next()) {
				p = new Product(rs.getString(3), rs.getString(2), rs.getInt(4));
				p.setId(rs.getInt("id"));

				product.add(p);
			}
			mCon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return product;
	}

	@Override
	public List<Product> getPart3() {
		List<Product> product = new ArrayList<Product>();
		MySQLConnection mCon;
		try {
			mCon = new MySQLConnection();
			String sql = "select * from product limit 12,6";
			Statement st = mCon.getCon().createStatement();
			ResultSet rs = st.executeQuery(sql);
			Product p = null;
			while (rs.next()) {
				p = new Product(rs.getString(3), rs.getString(2), rs.getInt(4));
				p.setId(rs.getInt("id"));

				product.add(p);
			}
			mCon.closeConnection();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return product;
	}

}
