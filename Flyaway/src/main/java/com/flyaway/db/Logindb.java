package com.flyaway.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Logindb {

	//connection
			private Connection conn;
		    public Logindb() {
		    conn = DBConfig.getConnection();
			                           }
	String sql = "select * from user where Name=? and Password=?";
	
	public boolean check(String name, String Upassword){
		boolean flag =false;
		
		try {PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, name);
			st.setString(2, Upassword);
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