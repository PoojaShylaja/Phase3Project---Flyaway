package com.flyaway.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLogindb {
	//connection
			private Connection conn;
		    public AdminLogindb() {
				conn = DBConfig.getConnection();
			                           }
		    

	String sql = "select * from AdminLogin where Email=? and PassWord=?";
	
public boolean check(String email, String pass){
		boolean flag =false;
		try {
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, email);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next()){
				flag =true;
				return flag;
			}
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
		
		return flag;		
}
}