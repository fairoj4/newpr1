<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report of patient</title>
</head>
<body background="8_1.jpg"><br><br><br>
<center><h1 style="color:lightblue">Delivery of Patient Report</h1></center>


    <h3 style="float: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Home.jsp" type="button" class="btn btn-info">Home</a></h3>
    <h3 style="float: right"><a href="Logout.jsp" type="button" class="btn btn-info">Logout</a></h3>
<br><br><br><br>
<form action="ReportDeliveryController" name="myform" onsubmit="return validate()" method="post">

<table border="1" align="center">

<tr><td>Patient Id:</td><td><input type="text" name="patientid" id="patientid" onblur="patientid1(this.id,this.value)"/></td></tr> 
</table>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<input type="submit" value="Get Report">

<script type="text/javascript">
function patientid1(a,b)
{
	 var exp=/^[0-9]{2,6}$/;
	 if(b!=""){
	 if(!b.match(exp))
	 {
	  alert("Patient id must be genuine number");
	  document.myform.patientid.value="";
	  }
	 }
	}
	function validate()
	{
	if(document.myform.patientid.value==""){
	alert("Enter patient id");
	return false;
}
	return true;
}
</script>
</form><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer" style="background-color:#COCOCO;clear:both;text-align:center;">
Copyright © Tech Mahindra Diagnostics Private Limited</div>
 
</body>
</html>