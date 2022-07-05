<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style/style7.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<center>
<br/>
<br/><br/>
<h3>FlyAway</h3>
<br/>
<h4>   Admin  Login <h4> 
</center>
<div class='container'>
<div class='card'>
<form action="adminlogin" method="post">
<input name="email" type="text" Placeholder="Admin ID" id='name'><br>
<input name="pass" type="password" placeholder="Password " id='name' ><br>
<button type="submit" value="Submit" id='Submit'>LogIn</button>
</form>
</div>
</div>
</body>
</html>