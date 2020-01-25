<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Home</title>
<style>
body {
    background-color: lightblue;
    background-image: url("images/employee.jpg");
}
input {
	color: blue;
}
</style>
</head>
<body>
<h1 align="left" style="color:red;">Employee Home</h1></center>

<center>
<%@page import="java.sql.*" %>
<%
HttpSession sess=request.getSession(false);
sess.getAttribute("username");
sess.getAttribute("password");
%> 
<% 
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
con.setAutoCommit(false);
PreparedStatement ps=con.prepareStatement("select * from vendorlogin",ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs=ps.executeQuery();
%>
<center>
<b style="color:blue;">Select Vendor<b> <br/><br/><br/>
<form action="menu.jsp?user=userid1" id="menuform" method="post">
	<select name="vendor" form="menuform" style="width: 200px; height: 30px">
	<%while(rs.next()){ %>
		<option value="<%= rs.getString(3)%>" style="color:green;"> <%= rs.getString(3)%></option>
	
	<%}%></select>
	<input type="submit" value="Submit">
</form>
<br/>
<br/>
<br/><br/>
<a href="logout.jsp">Log Out</a>

</center>
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