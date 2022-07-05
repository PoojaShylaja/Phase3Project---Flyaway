<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style/style1.css">
<title>UserLogin</title>
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
<body>
<br>
<br>
<br>
<br>
<h2>FlyAway </h2><br>
<center> <h3>	User  Login </h3></center><br>
<div class='container'>
<div class='card'>
<br>
<form action="userlogin" method="post">
<input name="name" type="text" placeholder=UserName id=name><br>
<input name="password" type="password" Placeholder=Password id=name><br>
<button  type="submit" value="Submit" id=Submit >LogIn</button>
</form>
</div>
</div>
</body>
</html>