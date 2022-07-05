package com.flyaway.db;

import java.sql.*;


public class NewRegistrationdb {
	
	//connection
		private Connection conn;
	    public NewRegistrationdb() {
			conn = DBConfig.getConnection();
		                           }
	    
	    String sql = "INSERT INTO user(Name,email,Password) VALUES (?,?,?);";
	    
	public boolean check(String name, String email, String pass) {
		boolean flag =false;
		
		try {
			PreparedStatement st = conn.prepareStatement(sql);
			
			
			st.setString(1,name);
			st.setString(2,email);
			st.setString(3,pass);
			
			
			int rs = st.executeUpdate();
			
			if(rs == 1){
				flag =true;
				return flag;
			}
			
		
			
			
		} catch (Exception e) {
		
			
			e.printStackTrace();
			System.out.println("Passed DAO");
		}
		
		
		return flag;
		
		
		
		
		
	}
	

}