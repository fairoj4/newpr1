<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Food</title>
<style>
body {
    background-color: lightblue;
}
</style>
</head>
<body>
<%@page import="java.sql.*" %>
<%HttpSession sess=request.getSession(false);
String menuid=request.getParameter("menuid");
String foodname=request.getParameter("foodname");
String foodtype=request.getParameter("foodtype");
String price=request.getParameter("price");
String userid=request.getParameter("user_id");
%>
<%
try
{
	int status=0;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
	con.setAutoCommit(false);
	PreparedStatement ps=con.prepareStatement("insert into menu(menuid,food_name,food_type,price,user_id) values(?,?,?,?,?)");
	ps.setString(1,menuid);
	ps.setString(2,foodname);
	ps.setString(3,foodtype);
	ps.setString(4,price);
	ps.setString(5,userid);
	status=ps.executeUpdate();
	con.commit();
	con.close();
	if(status>0)
	{
		response.sendRedirect("vendorhome.jsp");
	}
	else
	{
		out.println("error occured");
	}
	
	%>
	
	
	<%
	
	
	
	
}catch(Exception e){
		out.println(e);
	}
	finally{
		System.out.println("finally block is always executed");
	}
%>
</body>
</html>