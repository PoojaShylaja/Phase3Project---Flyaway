package com.flyaway.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyaway.db.*;

@WebServlet("/changepassword")
public class PasswordChange extends HttpServlet {
private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       
		       PasswordChangeAdmindb cdb = new PasswordChangeAdmindb();
		       PrintWriter out = response.getWriter();
		       String pass = request.getParameter("passwordEntered");
		      if (!AdminLogin.isLoggedIn){
		            out.println("You must login first");
		        }
		        else if (pass.equals("")){
		            out.println("Password can't be empty");
		        }
		        else if (AdminLogin.isLoggedIn && !pass.equals("")){
		             if(cdb.check(pass)){
		            	 out.println("Password changed. New Password is "+pass);
		            	 response.setContentType("text/html");
		            	 out.println();
		            	 out.println("<a href=\"adminlogin.jsp\">Admin Login</a>");
		             }
		            
		        }
		        else {
		            out.println("Sorry, Something went wrong");
		        }
		}

}