<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style/style.css">
<title></title>
</head>

<style>
 body{
     background-image : url('image/pic7.png');
     <!--To cover whole screen-->
     background-size : cover;
     <!--To set no repeat-->
     background-repeat : no-repeat;
     
    }
</style>

<body>

<h1>WELCOME TO FLYAWAY</h1>
<h2>Your journey is one click away</h2>



 
        <div class="SIGNUP"> 
        <form action="register.jsp" method="post">  
        <TABLE><tr>
        <td colspan="2" style="text-align:center"><input class="sub" type="submit" value="SIGN UP"/></td>  
        </tr></TABLE>
        </form>  
        </div> 
       
       
        <div class="SIGNIN">  
        <form action="login.jsp" method="post">  
        <TABLE><tr>
        <td colspan="2" style="text-align:center"><input class="sub" type="submit" value="SIGN IN"/></td>  
        </tr></TABLE>
        </form>  
        </div> 
     
     

  
        <div class="adminlogin">  
		<form action="adminlogin.jsp" method="post">  
		<TABLE><tr>
		<td colspan="2" style="text-align:center"><input class="sub" type="submit" value="ADMIN lOGIN"/></td>  
		</tr></TABLE>
		</form>  
		</div> 
     
</body>
</html>