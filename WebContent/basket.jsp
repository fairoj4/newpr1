<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Basket Page</title>
<style>
body {
    background-color: lightblue;
    background-image: url("images/cart1.jpg");
}
</style>
</head>
<body>
	<%! String[] menuids; %>
	<br/><br/><br/><br/><br/><br/><br/><center> <strong style="color:blue;"><h3>Your Basket Contains:</h3></strong><br/>
	<%
	menuids=request.getParameterValues("MenuId");
	%>
	<%@page import="java.sql.*" %>
	<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
		con.setAutoCommit(false);
		
		if(menuids != null)
		{%>
			<table border="2" width="30%"><tr><th bgcolor="#FF0FFF">Menu ID</th><th bgcolor="#FF0FFF">Food Name</th><th bgcolor="#FF0FFF">Price</th></tr>
			<%
			for(int i=0; i<menuids.length; i++)
			{
				PreparedStatement ps=con.prepareStatement("select * from menu where menuid=?");
				ps.setString(1,menuids[i]);
				ResultSet rs=ps.executeQuery();
				
				while(rs.next()){%>
					<tr align="center"><td><%= rs.getString(1)%></td><td><%= rs.getString(2)%></td><td><%= rs.getString(3)%></td><td><%= rs.getString(4)%></td></tr>
				
				<%}
			}%>
			</table><br/><b><strong style="color:blue;">Total Amount:</strong></b><%
			int temp=0;
			for(int i=0; i<menuids.length; i++)
			{
				PreparedStatement ps=con.prepareStatement("select * from menu where menuid=?");
				ps.setString(1,menuids[i]);
				ResultSet rs=ps.executeQuery();
				
				while(rs.next()){
					temp=temp+Integer.parseInt(rs.getString(4));
					
				}
			}out.println(" "+temp+"<br/><br/>");
			session.setAttribute("tmp", temp);
			%>
			<br/><b><strong style="color:blue;"> Your Mobo Money Balance is:  </strong> </b>
			<%
			HttpSession sess=request.getSession(false);
			sess.getAttribute("username");
			PreparedStatement ps2=con.prepareStatement("select * from employeelogin where user_id="+sess.getAttribute("username"));
			ResultSet rs2=ps2.executeQuery();
			%>
			
			<% while(rs2.next()){%>
				<%= rs2.getString(4) %><br/>
			<%} 
			%>
			
			<br/><b><strong style="color:blue;"> Submit here to Pay Through MoboMoney</strong></b><br/><br/>
			<form action="mobopage.jsp" method="post">
				<input type="submit" name="placeorder" value="Submit and Confirm" style="color:blue;">
			</form>
		<%
		}
		else
		{
			out.println("<b> Nothing <b>");
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