<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style/style1.css">

</head>
<style>
 body{
     background-image : url('image/pic7.png');
     <!--To cover whole screen-->
     background-size : cover;
    
     
    }
</style>
<body>
<center>
<h2>FlyAway</h2> <br/><br/><br/><br/>

</center>
 <div class='container'>
<div class='card'>
<h3>     User Registration </h3>
<form action="newregistration" method="post" >
					        
<input name="name"  type="text" maxlength=50 id=name placeholder="Name"><br>
<input name="email" type="text"  maxlength=100 id=name placeholder="e-mail"><br>
<input name="password" type="password" maxlength="20" id=name Placeholder="password"><br>
<button type="submit" value="Submit" id=Submit>Sign Up</button>
</form>
</div>
</div>
</body>
</html>