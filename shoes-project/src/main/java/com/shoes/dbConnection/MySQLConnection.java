package com.shoes.dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class MySQLConnection {
	private Connection con;

	public MySQLConnection()
			throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {

		ResourceBundle rs = ResourceBundle.getBundle("SystemConfig");
		
		Class.forName(rs.getString("dbdriver")).newInstance();
		con = DriverManager.getConnection(rs.getString("dblink") + rs.getString("dbusingcharacterset"),
				rs.getString("dbusername"), 
				rs.getString("dbpassword"));
	}

	public void closeConnection() throws SQLException {
		con.close();
	}

	public void searchProductByTypeID(int typeId) throws SQLException {
		String sql = "select * from persons where personId = ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, typeId);
		ResultSet rs = st.executeQuery();
		while (rs.next()) {
			System.out.print("id:" + rs.getInt(1) + "\n");
			System.out.print("lastName:" + rs.getString(2) + "\n");
			System.out.print("firstName:" + rs.getString(3) + "\n");
			System.out.print("address:" + rs.getString(4) + "\n");
			System.out.print("city:" + rs.getString(5) + "\n");
			System.out.print("username:" + rs.getString(6));
			System.out.println("\n");
		}
	}

	public Connection getCon() {
		return con;
	}

	public void setCon(Connection con) {
		this.con = con;
	}
	
	public static void main(String[] args) {
		try {
			MySQLConnection mCon = new MySQLConnection();

			System.out.println(mCon.con);

			try {
				mCon.closeConnection();
				System.out.println("Close connection to MySQL");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}
}