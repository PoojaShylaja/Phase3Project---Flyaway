<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.flyaway.servlets.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style/style9.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Password Change</title>

<style>
body{
     background-image : url('image/pic7.png');
     <!--To cover whole screen-->
     background-size : cover;
     <!--To set no repeat-->
     background-repeat : no-repeat;
     }
</style>
</head>
<body>
<h3>FlyAway</h3>
<div class="container">
<div class="card">

<h4>Password Change</h4>
<%
if (AdminLogin.isLoggedIn) {
 %>
<form action="changepassword" method="post">
<div>
<label >Email address : Admin@flights.com</label></br>
</div>
<div >
<br/>
<label for="inputPassword" >New Password : </label>
<input type="password" name="passwordEntered"  placeholder="Enter a new password" >
</div>
<button type="submit" id='Submit'>Change Password</button>
</form>
<%
}
else {
out.print("You must Login first");
}
 %>
</div>
</div>
</body>
</html>