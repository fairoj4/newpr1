<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Food Item</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%String menuid1=request.getParameter("menuid1");
%>
<% 
try
{	int status=0;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
	PreparedStatement ps=con.prepareStatement("delete from menu where menuid=?");
	ps.setString(1,menuid1);
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

	
}catch(Exception e){System.out.println(e);}%>
</body>
</html>