
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function uname1(a,b){
	var exp=/^[A-Za-z]{0,10}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid  User username");
			document.myform.username.value="";
		}
	}
	
}
function pwd1(a,b){
	var exp=/^[0-9]{3,10}$/;
	if(b!=""){
	if(!b.match(exp))
	 {
	  alert("enter a valid  User password");
	  document.myform.password.value="";
	 }
}
}
function uname2(a,b){
	var exp=/^[A-Za-z]{5,10}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid Admin username");
			document.myform.username.value="";
		}
	}
	
}
function pwd2(a,b){
	var exp=/^[0-9]{5,10}$/;
	if(b!=""){
	if(!b.match(exp))
	 {
	  alert("enter a valid Admin password");
	  document.myform.password.value="";
	 }
}
}


function validate()
{
	if((document.myform.username.value=="")&&(document.myform.password.value=="")){
		alert("Enter  User username and password");
		return false;
	}

if((document.myform.username.value=="")&&(document.myform.password.value=="")){
	alert("Enter Admin  username and password");
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
<title>Login page</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<style>
	.container{
	margin:40px;
	}
	.col-md-5{
	position:relative;
	align:center;
	background-color: rgba(194, 194, 214,0.6); <!-- 134.52.52 255,128,0-->
	margin:40px;
	padding:20px;
	border:30px;
	}
	</style>

<script>
	window.history.forward();
	function noBack() {
		window.history.forward();
}
</script>

<body background="16_6.jpg"  onload="noBack();" onpageshow="if (event.persisted) noBack();">


<h1 align="center"><big><span style="color:lightblue"> Welcome to Tech Mahindra Diagnostic Center </span> </big></h1>

<br>
<br>
<br>
<div class="container">
	<div class="row">
	<div class="col-md-5" >
		
<form action="./LoginController" name="myform" onsubmit="return validate()" method="post">

<table cellspacing="25" cellpadding="25">
<tr><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Login
</th></tr>
<tr> 
	<td>UserName</td>
	<td><input type="text" name="userName" id="username" required onblur="uname1(this.id,this.value)"/></td>
</tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<tr>
	<td>Password</td>
	<td> <input type="password" name="password" id="password" required onblur="pwd1(this.id,this.value)" /> </td></tr>
	<tr><td><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Login"/>&nbsp;&nbsp;</center><br>
	<center>New User? <a href="UserRegistration.jsp" > Register Here</a></center>
</td></tr></table></form><br>
</div></div></div>

<div class="container">
	<div class="row">
	<div class="col-md-5">
	<form action="./AdminController" name="myform" onsubmit="return validate()" method="post">
<table  cellspacing="25" cellpadding="25">
<tr><th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Admin Login</th></tr>
<tr> 
	<td>UserName</td>
	<td> <input type="text" name="username" id="username" required onblur="uname2(this.id,this.value)"/> </td>
</tr>
<tr>
	<td>Password</td>
	<td> <input type="password" name="password" id="password" required onblur="pwd2(this.id,this.value)"/> </td></tr>
	<tr><td><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Login"/></center>&nbsp;&nbsp;
</td></tr></table>
</form>
</div></div></div>
<b></b><div id="footer" style="background-color:#COCOCO;clear:both;text-align:center;">
Copyright © Tech Mahindra Diagnostics Private Limited</div>
</body>
</html>


 


