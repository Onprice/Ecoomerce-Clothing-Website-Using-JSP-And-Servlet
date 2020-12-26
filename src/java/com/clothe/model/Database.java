package com.clothe.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.clothe.bean.Products;
import com.clothe.bean.Users;


public class Database {
	
	private String username = "root";
	private String password = "";
	private String dbname = "new_shop";
	private String url = "jdbc:mysql://localhost:3306/"+dbname;
	private String driver = "com.mysql.jdbc.Driver";
	
	ArrayList<Products> lists = new ArrayList<>();
	ArrayList<Users> userLists = new ArrayList<>();
	
	private Connection con;
	private void dbConnection() {
		try {
			Class.forName(driver);
			
			this.con = DriverManager.getConnection(url ,username, password);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void dbCloseConnection() {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public void addUsers(Users user) throws SQLException {
		dbConnection();
		String sql = "Insert into user(name,email,username,address,password) values(?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, user.getName());
		st.setString(2, user.getEmail());
		st.setString(3, user.getUsername());
		st.setString(4, user.getAddress());
		st.setString(5, user.getPassword());
		
		
		st.executeUpdate();
		dbCloseConnection();
	}

	public boolean checkUsers(String username, String password) throws SQLException {
		dbConnection();
		int count = 0;
		String sql = "Select * from user where username = ? and password = ?";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, username);
		st.setString(2, password);
		
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			count = 1;
		}
		
		dbCloseConnection();
		if(count == 0)
			return false;
		
		return true;
	}

	public ArrayList<Products> fetch() throws SQLException {
		dbConnection();
		String sql = "Select * from product";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			int id=rs.getInt("id");
			String name= rs.getString("name");
			String category= rs.getString("category");
			String price= rs.getString("price");
			String featured= rs.getString("featured");
			String image= rs.getString("image");
			
			Products p = new Products();
			p.setCategory(category);
			p.setFeatured(featured);
			p.setId(id);
			p.setImage(image);
			p.setName(name);
			p.setPrice(price);
			lists.add(p);
			p=null;
			
		}
		
		dbCloseConnection();
		return lists;
	}

	public ArrayList<Users> fetchUser() throws SQLException {
		dbConnection();
		String sql = "Select * from user";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			String address = rs.getString("address");
			String user = rs.getString("username");
			String email = rs.getString("email");
			String name = rs.getString("name");
			int id = rs.getInt("id");
			String password = rs.getString("password");
			
			Users u = new Users();
			u.setAddress(address);
			u.setEmail(email);
			u.setId(id);
			u.setName(name);
			u.setUsername(user);
			u.setPassword(password);
			userLists.add(u);
			u=null;
				
		}
		
		dbCloseConnection();
		return userLists;
	}

	public void deleteProducts(String id) throws SQLException {
		
		dbConnection();
		String sql = "Delete from product where id=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, id);
		st.executeUpdate();
		dbCloseConnection();
		
	}

	public Products fetchProducts(String id) throws SQLException {
		dbConnection();
		String sql = "select * from product where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rst = pstmt.executeQuery();
		Products p = new Products();
		while(rst.next()){
			
			p.setId(rst.getInt("id"));
			p.setName(rst.getString("name"));
			p.setPrice(rst.getString("price"));
			p.setCategory(rst.getString("category"));
			p.setFeatured(rst.getString("featured"));
			p.setImage(rst.getString("image"));
		}
		dbCloseConnection();
		return p;
	}

	public void updateProducts(Products p) throws SQLException {
		dbConnection();
		String sql = "update product set name=?,price=?,category=?,featured=? where id=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, p.getName());
		st.setString(2, p.getPrice());
		st.setString(3, p.getCategory());
		st.setString(4, p.getFeatured());
		st.setInt(5, p.getId());
		st.executeUpdate();
		dbCloseConnection();
	}

	public void addProducts(Products p) throws SQLException {
		dbConnection();
		String sql = "Insert into product(name,price,category,featured,image) values(?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, p.getName());
		st.setString(2, p.getPrice());
		st.setString(3, p.getCategory());
		st.setString(4, p.getFeatured());
		st.setString(5, p.getImage());
		
		
		st.executeUpdate();
		dbCloseConnection();
	}

	
	
	
}
