<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Vendor</title>
<style>
body {
	background-color: lightblue;
	 background-image: url("images/viewvendor.jpg");
    background-size: cover;
}
table{ background-color:lightyellow;}
</style>
<title>View Vendor</title>
</head>
<body>
<%@ page import="com.dao.UserDao,com.bean.*,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1 align="center"><b style="color:yellow;">  Vendors List</b></h1>
<%
List<User> list=UserDao.getAllRecords(); 
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>UserID</th><th>Password</th><th>Vendor Name</th><th>Phone No.</th><th>Email Address</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.userid}</td><td>${u.password}</td><td>${u.vendorname}</td><td>${u.phoneno}</td><td>${u.email}</td><td><a href="editform.jsp?userid=${u.userid}">Edit</a></td><td><a href="deleteuser.jsp?userid=${u.userid}">Delete</a></td></tr>
</c:forEach>
</table><br/>
<center><a href="adduserform.jsp">Add New User</a>
<br/><br/><a href="adminindex.jsp"> Home</a></center>
</body>
</html>