<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<script type="text/javascript">
function fname1(a,b){
	var exp=/^[A-Za-z]{3,10}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid firstname");
			document.myform.fname.value="";
		}
	}
	
}
function lname1(a,b){
	var exp=/^[A-Za-z]{3,10}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid lastname");
			document.myform.lname.value="";
		}
	}
	
}
function age1(a,b){
	var exp=/^[0-9]{1,2}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid age");
			document.myform.age.value="";
		}
	}
	
}
function mobile1(a,b)
{
 var exp=/^[0-9]{10}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("Phone number must contain 10 numbers");
  document.myform.mobile.value="";
  }
 }
}
function doctor1(a,b){
	var exp=/^[A-Za-z]{3,20}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("Enter a valid doctor name");
			document.myform.doctor.value="";
		}
	}
}
function date1(a,b){
var exp= /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
if(b!=""){
	if(!b.match(exp)){
		alert("Enter a valid date ");
		document.myform.date.value="";
	}
	}
}

function email1(a,b){
	var exp=/^\w+[@]{1}\w+[\.]{1}[A-Z a-z]+[\.]{0,1}[A-Z a-z]+$/;
	if(b!=""){
	if(!b.match(exp))
	 {
	  alert("enter a valid email id");
	  document.myform.email.value="";
	 }
}
}
function validate()
{
	if(document.myform.fname.value==""){
		alert("Enter First Name");
		return false;
	}
	if(document.myform.lname.value==""){
		alert("Enter Last Name");
		return false;
	}
	if(document.myform.age.value==""){
		alert("Enter Age");
		return false;
	}
	if ( ( document.myform.g[0].checked == false ) && ( document.myform.g[1].checked == false ) ) 
	{
	alert( "Please provide your gender!" );
	  return false;
	}
	if(document.myform.doctor.value==""){
		alert("Enter Doctor Name");
		return false;
	}
	
	if(!((document.myform.test1.checked == true) || (document.myform.test2.checked == true) || (document.myform.test3.checked == true) ||(document.myform.test4.checked == true) ))
	{
		alert("Select atleast one test");
		return false;
	}
	if(document.myform.time.value=="-1")
		{
		alert("Select the time interval");
		return false;
		}
	if(document.myform.date.value==""){
		alert("Enter valid date");
		return false;
	}
	if(document.myform.email.value==""){
		alert("Enter Email id");
		return false;
	}
	if(document.myform.mobile.value==""){
		alert("Enter Mobile no");
		return false;
	}
	return true;
}
</script>


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Patient Registration</title>
<style>
#a1
{
float:left;
clear:right;
padding-left:100px;
}
#a2
{
float:right;
padding-right:100px;
}
</style>

</head>
<script>
window.history.forward();
function noBack() {
	window.history.forward();
}
</script>

<body background="16_6.jpg" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">

<form action="PatientRegistrationController"  name="myform" onsubmit="return validate()" method="get">


<h1 align="center" style="color:lightblue">Patient Test Registration</h1>
 <h3><a href="Home.jsp" type="button" class="btn btn-primary" id="a1">Home</a></h3>
<h3><a href="Login.jsp" type="button" class="btn btn-primary" id="a2">Logout</a></h3><br>



<table align="center" border="3" >

<tr><td><b>PatientId:</b></td><td><input type="text" name="patientId" id="patientId" onblur="fname1(this.id,this.value)"/></td></tr>

<tr><td><b>FirstName:</b></td><td><input type="text" name="fname" id="fname" onblur="fname1(this.id,this.value)"/></td></tr>


<tr><td><b>LastName:</b></td><td><input type="text" name="lname" onblur="lname1(this.id,this.value)"/></td></tr>


<tr><td><b>Age:</b></td><td><input type="text" name="age" onblur="age1(this.id,this.value)"/></td></tr>


<tr><td><b>Gender:</b></td><td>


<input type="radio" name="g" value="male">Male<br>


<input type="radio" name="g" value="female">Female</td></tr>

<tr><td><b>Doctor's Name:</td><td><input type="text" name="doctor" onblur="doctor1(this.id,this.value)"></td></tr>

<tr><td><b>Select Test:</td><td>

<input type="checkbox" name="test1" value="UrineTest">Complete Urine Test<br>

<input type="checkbox" name="test2" value="BloodTest">Complete Blood Test<br>


<input type="checkbox" name="test3" value="SugarTest">Sugar Test<br>



<input type="checkbox" name="test4" value="WBCTest">WBC Test</td></tr>

<tr><td><b>Appointment Time:</td><td>
    <input type="radio"  value="06.00 A.M to 09.00 A.M" name="time">06.00 A.M to 09.00 A.M<br>
 <input type="radio"  value="10.00 A.M to 01.00 P.M" name="time">10.00 A.M to 01.00 P.M<br>
  <input type="radio"  value="02.00 P.M to 04.00 P.M" name="time">02.00 P.M to 04.00 P.M<br>
   <input type="radio"  value="05.00 P.M to 08.00 P.M" name="time">05.00 P.M to 08.00 P.M<br>

<tr><td><b>Appointment Date(DD/MM/YYYY):</td><td><input type="text" name="date" onblur="date1(this.id,this.value)">
</td></tr>
<tr><td><b>Email-Id:</td><td><input type="text" name="email" onblur="email1(this.id,this.value)"></td></tr>

<tr><td><b>Mobile:</td><td><input type="text" name="mobile" onblur="mobile1(this.id,this.value)"></td></tr>
</table><br>
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

<input type="submit" value="Register"/>

</form>
<br><br><b>
<div id="footer" style="background-color:#COCOCO;clear:both;text-align:center;">
Copyright © Tech Mahindra Diagnostics Private Limited</div></b>

</body>

</html>
