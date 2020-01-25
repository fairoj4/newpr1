<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="beans.CreateReportBean" import="beans.TestMenuBean" import="beans.TestMenuWbcProfile" import="beans.TestMenuSugarProfile" import="java.util.List" import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Display</title>

</head>
<body background="8_1.jpg">
<%
CreateReportBean list=(CreateReportBean)request.getAttribute("displaylist");
%> 
<%@page import="java.sql.*" %>
<%@page import="utility.*" %>
<%! Connection con;
PreparedStatement stmt;
ResultSet rs;
%>

<table  align="center" border="1">
<tr >
<th>
Patient applied for<%=request.getAttribute("id") %></th></tr>
<%
int val=Integer.parseInt(request.getParameter("patientId"));
 con=GetDBConnection.getDBConnection();
stmt=con.prepareStatement("select test1,test2,test3,test4 from test_register where patientid=?");
/* stmt.setInt(1, Integer.parseInt(request.getParameter("PatientId")));
 */
  stmt.setInt(1, val);
  rs=stmt.executeQuery();
if(rs.next())
{
%>

	<tr><td><%=rs.getString(1) %></td></tr>

	<tr><td><%=rs.getString(2) %></td></tr>


<tr><td><%=rs.getString(3) %></td></tr>

<tr><td>
	<%=rs.getString(4) %></td></tr>

</table>
	
<%
}
%>
<br>
<form action="GenerateReportController" method="post">
<table border="1" align="center">
<tr><td>PatientId:</td><td><input type="text" name="patientId" required></td></tr>
<tr><td>Remarks for Complete Urine Test:</td><td><input type="radio" name="completeurine" value="NotApplied">Not Applied<br>
<input type="radio" name="completeurine" value="Normal">Normal<br>
<input type="radio" name="completeurine" value="Colour">Digoxin levels not normal</td></tr>
<tr><td>Remarks for Complete Blood Test:</td><td><input type="radio" name="completeblood" value="NotApplied">Not Applied<br>
<input type="radio" name="completeblood" value="Normal">Normal<br>
<input type="radio" name="completeblood" value="Haemoglobin">Haemoglobin levels are low</td></tr>
<tr><td>Remarks for Sugar Test:</td><td><input type="radio" name="sugar" value="NotApplied">Not Applied<br>
<input type="radio" name="sugar" value="Normal">Normal<br>
<input type="radio" name="sugar" value="Insulin">Insulin Levels not normal</td></tr>
<tr><td>Remarks for WBC Test:</td><td><input type="radio" name="wbc" value="NotApplied">Not Applied<br>
<input type="radio" name="wbc" value="Normal">Normal<br>
<input type="radio" name="wbc" value="count">count is not normal</td></tr>
<tr><td></td><td><input type="submit" value="Generate Report"/></td></tr>
 
</table>
</form>
<div id="footer" style="background-color:#COCOCO;clear:both;text-align:center;">
Copyright © Tech Mahindra Diagnostics Private Limited</div>
</body>
</html>