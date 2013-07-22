package com.javis.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectDatabase {
	private static Connection connect = null;
	private static PreparedStatement psmt = null;
	private static ResultSet rs = null;
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/javis","root","");
			if (connect == null) {
				System.out.println("Connection is still null");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			
			if (psmt != null) {
				psmt.close();
			}
			
			if (connect != null) {
				connect.close();
			}
		} catch (Exception e) {
			
		}
	}
	
	public static ResultSet search(String query) {
		try {
			String[] queries = query.split(" ");
			String statement = "select * from `question` where(";
			statement += "description like \"%"+ queries[0] + "%\"";
			
			for (int i = 1; i < queries.length; i++) {
				statement += " or " + "description like \"%"+ queries[i] + "%\"";
			}
			for (int i = 0; i < queries.length; i++) {
				statement += " or " + "optionaldescription like \"%"+ queries[i] + "%\"";
			}
			statement += ")";
			psmt = connect.prepareStatement(statement);
			rs = psmt.executeQuery();
		} catch (SQLException e) {
			System.out.println("Problem with search");
		}
		return rs;
	}
	
	public static String getCategory(String id) {
		String category = null;
		try {
			String statement = "select categoryName from category where id=" + id;
			psmt = connect.prepareStatement(statement);
			rs = psmt.executeQuery();
			if (rs.next()) {
				category = rs.getString(1);
			} else {
				category = "no next";
			}
		} catch (SQLException e) {
			System.out.println("Error");
		}
		return category;
	}
}
