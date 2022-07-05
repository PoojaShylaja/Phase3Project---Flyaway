<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.flyaway.model.*" %>


<%
    Booking.passenger_name = request.getParameter("pname");
    Booking.passenger_email= request.getParameter("email");
    Booking.passenger_phone= request.getParameter("phone");
    if (Booking.passenger_name.equals("")
            || Booking.passenger_email.equals("")
            || Booking.passenger_phone.equals("")) {
        out.println("Please enter valid passenger details");
    }
    else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style/style2.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Details</title>

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
<section >
<section >
<div class="row">
<div class="col">
<h3>Flyaway</h3>
<h4 ><b>Checkout</b></h4>
<p align="center" ><span><strong>Enter Payment Details</strong></span></p><br>
</div>
</div>
 <section>
<div class='container'>
<div class='card'>
 <form action="${pageContext.request.contextPath}/thankyou.jsp" method="post" class="form-container">
<div >
<label for="card_details" id='label'>UPI Id</label>
<input type="text" name="name_on_card" placeholder="Enter UPI Id" id='name'>
</div>
<div >
<label for="card_details" id='label'>Card Number/Mobile Number</label>
<input type="number" name="card_details" placeholder="Enter Mobile Number" id='name'>
</div>
<br>
<h5>Total Amount<br> <%=Booking.ticket_price%> X <%=Search.persons%> persons = Rs.<%=Booking.ticket_price*Search.persons%></h5>
<button type="submit" value="Submit" id='Submit'>Pay Through UPI</button>
</form>
</div>
</div>
</section>
</section>
</section> 
</body>
</html>
<%
    }
%>