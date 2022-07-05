<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.flyaway.model.*" %>
<%
    Booking.flight_booking_id = request.getParameter("flight_id");
    Booking.ticket_price =Double.parseDouble(request.getParameter("ticket_price"));
    Booking.flight_name = request.getParameter("name");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style/style5.css?version=51">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking Details</title>

<style>
body{
     background-image : url('image/pic7.png');
     <!--To cover whole screen-->
     background-size : cover;
     <!--To set no repeat-->
     background-repeat : no-repeat;
     
    }
</style>
<h3>FlyAway</h3>
</head>
<body>

<center>
<section >
<section >
<div class="row">
<div class="col">
<h4 ><b>Booking Details</b></h4>
<p align="center"><span><strong>Enter Passenger Details</strong></span></p><br>
</div>
</div>
<section >
<div class='container'>
<div class='card'>
 <form action="${pageContext.request.contextPath}/payment.jsp" method="post" class="form-container">
<label for="pname">Passenger Name</label>
 <input type="text" name="pname" placeholder="Name of Passenger"> <br/> <br/>
<label for="email">Email address</label>
<input type="email" name="email"  aria-describedby="emailHelp" placeholder="Enter email"> <br/> <br/>
<label for="phone">Phone Number</label>
<input type="number"  name="phone" placeholder="Enter phone number"> <br/> <br/>
<br>
<button type="submit" value="Submit" id=Submit>Submit</button>
</form>
</div>
</div>
</section>
</section>
</section>
</center>
</body>
</html>