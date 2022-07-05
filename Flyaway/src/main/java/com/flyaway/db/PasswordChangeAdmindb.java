package com.flyaway.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class PasswordChangeAdmindb {
	
	//connection
			private Connection conn;
		    public PasswordChangeAdmindb() {
				conn = DBConfig.getConnection();
			                           }
	String sql = "Update AdminLogin set PassWord=? Where Email=?;";
	
	public boolean check(String pass){
		boolean flag =false;
		
		try {
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1,pass);
			st.setString(2,"Admin@flights.com");
			int rs = st.executeUpdate();
			if(rs == 1){
				flag =true;
				return flag;
			}
} catch (Exception e) {
		
			e.printStackTrace();
		}
		return flag;
		}
}