<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%-- <link rel="stylesheet" href="style/style3.css">--%>
<link rel="stylesheet" type="text/css" href="style/style3.css?version=51">
<meta charset="ISO-8859-1">
<title>SearchFlight</title>
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
<br>
<br>
<br>
<br>
<h3>FlyAway </h3>
<h2>Search Flight</h2><br>
    
    <div class='container'>
    
         <div class='card'>
  		 <form action="searchflight" method="post">
		 <label for="date" id='lable'>Date</label>
		 <input type="date"   id="date" name="date" placeholder="DD-MM-YYYY">
        	       
         <label for="source" id='lable'>Source</label>
                    <select  id="source" name="source">
                        <option value="Trivandrum">Trivandrum</option>
                        <option value="Chennai">Chennai</option>
                        <option value="Pune">Pune</option>
                        <option value="Coimbatore">Coimbatore</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Odisha">Odisha</option>
                        <option value="Kolkata">Kolkata</option>
                        <option value="Bangalore">Bangalore</option>
                        </select>
         <label for="destination" id='lable'>Destination</label>
                    <select  id="destination" name="destination">
                        <option value="Trivandrum">Trivandrum</option>
                        <option value="Chennai">Chennai</option>
                        <option value="Pune">Pune</option>
                        <option value="Coimbatore">Coimbatore</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Odisha">Odisha</option>
                        <option value="Kolkata">Kolkata</option>
                        <option value="Bangalore">Bangalore</option>
                        </select>
        
         <label for="persons" id='lable'>No of Persons</label>
                        <select id="persons" name="persons">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        </select>
        
        <button type="submit"  value="Submit" id=Submit>Search Flights</button>
</form>
</div>
</div>
</body>
</html>