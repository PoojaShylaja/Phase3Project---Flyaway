<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%@page import="com.flyaway.servlets.*"%>

<%
    String driverName = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/flyaway";
    String userId = "root";
    String password = "Vrindavanam.8@";
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style/style8.css?version=51">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN DASHBOARD</title>
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
<h2>FlyAway</h2>

<%
    if (AdminLogin.isLoggedIn) {
%>

<h4><b>ADMIN DASHBOARD</b></h4>
<h5> FLIGHT TABLE</h5>
<div class="row">
<div >
<form method="post" action="${pageContext.request.contextPath}/passwordchange.jsp">
<button type="submit"  id='Submit' >Change Password</button>
</form>&ensp;
</div>
<div >
<form method="post" action="${pageContext.request.contextPath}/adminlogin.jsp">
<button type="submit"  id='Submit'>Logout</button>
</form>
</div>
<br>
</div>

<section >
<section >
<section>
<table align='center'>
<thead>
<tr>
<th scope="col">FLIGHT ID</th>
<th scope="col">NAME</th>
<th scope="col">SOURCE</th>
<th scope="col">DESTINATION</th>
<th scope="col">DAY</th>
<th scope="col">TICKET FARE</th>
</tr>
</thead>
<tbody>
               

 <%
try{
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
 String sql ="SELECT * FROM flight";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
 %>
                <tr>
                    <td><%=resultSet.getString("FlightId") %></td>
                    <td><%=resultSet.getString("Name") %></td>
                    <td><%=resultSet.getString("Source") %></td>
                    <td><%=resultSet.getString("Destination") %></td>
                    <td><%=resultSet.getString("Day") %></td>
                    <td><%=resultSet.getString("TicketPrice") %></td>
                </tr>
                
 <%
    }
 %>
</tbody>
</table>
<br/>
<br/>

<center><h1>MASTER  LIST FOR SOURCE - DESTINATION AND ROUTES</h1></center>   
                        
						<br/>
						<br/>                        
                        <table align='center'>
                <thead>
                <tr>
                    
                    
                    <th scope="col">SOURCE</th>
                    <th scope="col">DESTINATION</th>
                    <th scope="col">DAY</th>
                    
                </tr>
                </thead>
                <tbody> 
                 <% 
                 sql ="SELECT Distinct Source,Destination,Day FROM flight";
                 resultSet = statement.executeQuery(sql);
                 while(resultSet.next()){
                 %>
                
                          
                    
                    <td><%=resultSet.getString("Source") %></td>
                    <td><%=resultSet.getString("Destination") %></td>
                    <td><%=resultSet.getString("Day") %></td>
                    
                </tr>
                
              <%
                            }
                        %>
                        </tbody>
                        </table>
                        <br/>
                        <br/>
                        
                     <center><h1>MASTER  LIST FOR AIRWAYS</h1></center>   
                        
						<br/>
						<br/>                        
                        <table align='center'>
                <thead>
                <tr>
                    
                    
                    <th scope="col">AIRWAY</th>
                                       
                </tr>
                </thead>
                <tbody> 
                 <% 
                 sql ="SELECT Distinct Name FROM flight";
                 resultSet = statement.executeQuery(sql);
                 while(resultSet.next()){
                 %>
                
                          
                    
                    <td><%=resultSet.getString("Name") %></td>
                   </tr>
<%
}} catch (Exception e) {
e.printStackTrace();
}
}
else {
out.print("You must Login first");
}
 %>
</tbody>
</table>
</section>
</section>
</section>
</body>
</html>