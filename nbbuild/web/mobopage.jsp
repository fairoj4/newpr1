<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mobo Money</title>
<style>
body {
    background-color: lightblue;
    background-image: url("images/mobomoney.jpg");
}
</style>
</head>
<body>
<center><h2 style="color:red;">Welcome to MoboMoney</h2></center>
<br/>
<%
int temp2=0;
int ca=0;
int temp1 = Integer.parseInt(session.getAttribute("tmp").toString());
%>
<%@page import="java.sql.*" %>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user1","techm123");
	con.setAutoCommit(false);
	
	HttpSession sess=request.getSession(false);
	sess.getAttribute("username");
	PreparedStatement ps2=con.prepareStatement("select * from employeelogin where user_id="+sess.getAttribute("username"));
	ResultSet rs2=ps2.executeQuery();
	%>
	
	<% while(rs2.next()){%>
	<b><strong style="color:blue;"> Employee ID:  </strong></b>
		<%= rs2.getString(1) %><br/>
	<b> <strong style="color:blue;">Employee Name: </strong> </b>
		<%= rs2.getString(3) %><br>
	<%} 
	
	PreparedStatement ps=con.prepareStatement("select * from employeelogin where user_id="+sess.getAttribute("username"));
	ResultSet rs=ps.executeQuery();
	%>
	<br/><br/><br/><b> <center><strong style="color:blue;">MoboMoney Balance Before Deduction : </strong><b>
	<%while(rs.next()){
			int currentAmount= Integer.parseInt(rs.getString(4));
			ca=currentAmount;%>
			<i><%= rs.getString(4)%> </i><br/>
	<%}%></center>
	<%if(ca<(temp1))
	{
		response.sendRedirect("mobofail.jsp");	
	}
	else
	{
	%>
	<br/><b> <center><strong style="color:blue;">MoboMoney Balance After Deduction :</strong><b>
	<%
	temp1 = Integer.parseInt(session.getAttribute("tmp").toString());
	PreparedStatement ps1=con.prepareStatement("select * from employeelogin where user_id="+sess.getAttribute("username"));
	ResultSet rs1=ps1.executeQuery();
	while(rs1.next()){
	temp2=Integer.parseInt(rs1.getString(4));
	}
	int deduction=temp2-temp1;
	out.println(" "+deduction);%>
	<center><h3 style="color:green;">Transaction successful</h3></center>
	</center>
	<br/><br/><center><a href="emphome.jsp">Home</a></center>
	<%
	
	String strProcedure="{call bal_update(?,?)}"; // procedure name
	CallableStatement cs=con.prepareCall(strProcedure);
	cs.setString(1,sess.getAttribute("username").toString()); 
	cs.setInt(2,temp1); // assume temp1 is an integer variable;	
	//cs.registerOutParameter(3,java.sql.Types.VARCHAR);
	cs.execute();
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