<%@page import="beans.GenerateReportBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="beans.GenerateReportBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report Delivery</title>
<style>
table th,td
{
border:1px solid black;
border-collapse:collapse;
}
th,td
{
padding:5px;
}
</style>
</head>

<body background="8_1.jpg">
<a href="Home.jsp" type="button" class="btn btn-info">Home</a>
<%@page import="java.sql.*"%>
<%@page import="utility.GetDBConnection" %>
<%! Connection con;

Statement stmt1;
ResultSet rs;
%>

<%
con=GetDBConnection.getDBConnection();


stmt1=con.createStatement();
rs=stmt1.executeQuery("select * from report_table where id='"+request.getAttribute("id1")+"'");



%>
<div class="container">
<center><table class="table"><br><br><br><br><br><br><br>
<tr class="info">
<th style="color:red"> Patient Id</th>
<th style="color:red"> Test Name 1</th>
<th style="color:red"> Test name 2</th>
<th style="color:red"> Test Name 3</th>
<th style="color:red"> Test name 4</th>
</tr>
<%
while(rs.next())
{
%>
<tr class="warning">
<td><b><%=rs.getString(1) %></td>
<td><b><%=rs.getString(2) %></td>
<td><b><%=rs.getString(3) %></td>
<td><b><%=rs.getString(4) %></td>
<td><b><%=rs.getString(5) %></td>
</tr>
</table></center>
</div>

<%} %>
</body>
</html>