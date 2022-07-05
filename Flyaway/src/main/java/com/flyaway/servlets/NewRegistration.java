package com.flyaway.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyaway.db.*;

@WebServlet("/newregistration")
public class NewRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		
		
	    NewRegistrationdb uregdao = new NewRegistrationdb();
		
		if(name.equals("")||email.equals("")|| pass.equals("")){
			out.println("Please Enter The Data Correctly");
		}
		else{
			if(uregdao.check(name, email, pass)){
				out.println("User Registered Successfully");
				response.sendRedirect("login.jsp");
				
			}
			else{
				out.println("User Not Registered");
				response.sendRedirect("index.jsp");
			}
		}

			
			
			
			
			
			
			
		
		
		
	}
	

	
}