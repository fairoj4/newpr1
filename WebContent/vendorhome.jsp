<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor Home Page</title>
<style>
body {
    background-color: lightblue;
    background-image: url("images/vendorlogin.jpg");
    background-size:100% 111%;
    background-repeat:no-repeat;
}
a {
    color: black;
}
h3   {color: red;}
input {color: blue;}
table{ background-color:#FFEBCD;}
</style>
</head>
<body>
<%@page import="java.sql.*" %>
<%
HttpSession sess=request.getSession(false);

try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
	con.setAutoCommit(false);
	PreparedStatement ps=con.prepareStatement("select * from vendorlogin where user_id="+sess.getAttribute("userid"));
	ResultSet rs=ps.executeQuery();%>
	<div align="center">
	<%while(rs.next())
	{%>
		<b><strong style="color:blue;">Vendor ID: </strong>  <b><%= rs.getString(1) %><BR/><br/>
		<b> <strong style="color:blue;">Vendor Name: </strong>  <b><%= rs.getString(3) %><BR/><BR/><br/>
	<%}%>
	
	<%PreparedStatement ps1=con.prepareStatement("select * from menu where user_id="+sess.getAttribute("userid"));
	ResultSet rs1=ps1.executeQuery();
	%>
	<table border="1" bordercolor=blue>
	<tr><th>Menu ID</th><th>Food Name</th><th>Food Type</th><th>Price</th></tr>
	<%while(rs1.next())
	{%>
		<tr align="center"><td><%=rs1.getString(1)%></td><td><%= rs1.getString(2) %></td><td><%= rs1.getString(3) %></td><td><%= rs1.getString(4) %></td></tr>
	<%} %>
	
	</table></div>
	<hr>
	<h3 >Add New Food Item</h3>
	<form action="addfood.jsp" method="post">
	<table>
	<tr><td > MenuID</td><td><input type="text" name="menuid"/></td></tr>
	<tr><td>Food Name</td><td><input type="text" name="foodname"/></td></tr>
	<tr><td>Food Type</td><td><input type="text" name="foodtype"/></td></tr>
	<tr><td>Price </td><td><input type="text" name="price"></td></tr>
	<tr><td>VendorID</td><td><input type="text" name="user_id"></td></tr>
	<tr><td colspan="2"><input type="submit" value="AddFood"/></td></tr>
	</table></form>
	<hr>
	<H3>Update the Price for An Item</H3>
	<form action="updateprice.jsp" method="post">
	<table>
		<tr><td>Enter the Menu ID</td><td><input type="text" name="menuid"></td></tr>
		<tr><td>Price to be Set</td><td><input type="text" name="price"></td></tr>
		<tr><td colspan="2"><input type="submit" value="UpdatePrice"/></td></tr>
		</table>
	</form>
	<hr>
	<H3>To Delete An Item</H3></b>
	<form action="deleteitem.jsp" method="post">
	<table>
		<tr><td>Enter the Menu ID</td><td><input type="text" name="menuid1"></td></tr>
		<tr><td colspan="2"><input type="submit" value="DeleteItem"/></td></tr>
	</table>
	</form><hr>
	<a href="logout.jsp">Log Out</a>
</body>
</html>
<%
con.commit();
con.close();
}
	catch(Exception e){
		out.println(e);
	}
	finally{
		System.out.println("finally block is always executed");
	}
%>