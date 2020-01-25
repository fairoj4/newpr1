<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
<style>
body {
	background-color: lightblue;
}
</style>
</head>
<body>
<%@page import="com.dao.UserDao,com.bean.User"%>
<%
String id=request.getParameter("userid");
User u=UserDao.getRecordById(Integer.parseInt(id));
%><div align="center">
<h1>Edit Form</h1>
<form action="edituser.jsp" method="post">
<input type="hidden" name="userid" value="<%=u.getUserid()%>"/>
<table>
<tr><td>Password:</td><td><input type="password" name="password" value="<%=u.getPassword()%>"/></td></tr>
<tr><td>Vendor Name:</td><td><input type="text" name="vendorname" value="<%=u.getVendorname()%>"/></td></tr>
<tr><td>Phone No:</td><td><input type="text" name="phoneno" value="<%=u.getPhoneno()%>"/></td></tr>
<tr><td>Email:</td><td><input type="text" name="email" value="<%=u.getEmail()%>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="edituser"/></td></tr></table></form>

<br/><br/><a href="adminindex.jsp"> Home</a></center>
</div>
</body>
</html>