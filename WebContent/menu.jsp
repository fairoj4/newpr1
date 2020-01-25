<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Page</title>
<style>
body {
    background-color: lightblue;
    background-image: url("images/fastfood.jpg");
      background-size:100% 170%;
    background-repeat:no-repeat;
}
table{ background-color:#FFEBCD;}
</style>
</head>
<body>
<%String vndr=request.getParameter("vendor"); %>
<%@page import="java.sql.*" %>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
	con.setAutoCommit(false);
	
	HttpSession sess=request.getSession(false);
	sess.getAttribute("userid");
	sess.getAttribute("password");
	PreparedStatement ps2=con.prepareStatement("select * from employeelogin where user_id="+sess.getAttribute("userid"));
	ResultSet rs2=ps2.executeQuery();
	while(rs2.next()){
	%>
	<b style="color:blue;">Employee Name :</b><%= rs2.getString(3)%><br/><br/>
	<b style="color:blue;">MoboMoney Balance :</b> <%= rs2.getString(4) %><br/><br/>
	<%} %>
	
	<% 
	PreparedStatement ps=con.prepareStatement("select * from vendorlogin where vendor_name=?");
	ps.setString(1,vndr);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{%>
	<b style="color:blue;"> Vendor ID:   </b><%=rs.getString(1) %><br/><br/>
	<b style="color:blue;"> Vendor Name:   </b><%=rs.getString(3) %><br/><br/>
	<%PreparedStatement ps1=con.prepareStatement("select * from menu where user_id=?");
	ps1.setString(1,rs.getString(1));
	ResultSet rs1=ps1.executeQuery();
	%>
	
	<center><h3 style="color:white;">Food Menu:</h3>
	<table border="1" width="50%" >
	<tr><th bgcolor="#FF00FF">Menu ID</th><th bgcolor="#FF00FF">Food Name</th><th bgcolor="#FF00FF">Food Type</th><th bgcolor="#FF00FF">Price</th><th bgcolor="#FF00FF">Add To Cart</th></tr>
	<form action="basket.jsp" method="post" id="menuselect">
	<% 
	while(rs1.next())
	{%>
		
		<tr align="center"><td><%= rs1.getString(1)%></td><td><%=rs1.getString(2) %></td><td><%= rs1.getString(3)%></td><td><%= rs1.getString(4)%></td><td><input type="checkbox" name="MenuId" form="menuselect" value="<%= rs1.getString(1)%>" ></td></tr>
	<%}%>
	</table>
	</center>
	<br/><br/><center><input type="submit" name="submit" value="AddToBasket" style="color:blue;"></center>
	</form>
	<br/><br/>
	<center><a href="emphome.jsp" style="color:blue;">Home</a></center>
	<%
	}
%>
</body>
</html>
<%
con.commit();
con.close();
}
catch(Exception e){
	out.println(e);
	}
	finally{System.out.println("finally block is always executed");}
	%>