<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="controllers.RegistrationController" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">


function uname1(a,b){
	var exp=/^[A-Za-z]{3,10}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid username");
			document.myform.uname.value="";
		}
	}
}
function pwd1(a,b){
	var exp=/^[0-9]{3,8}$/;
	if(b!=""){
	if(!b.match(exp))
	 {
	  alert("enter a valid  User password");
	  document.myform.password.value="";
	 }
}
}



function validate()
{
    
	
      if((document.myform.uname1.value=="")||(document.myform.pwd1.value=="")){
          alert("please enter details");
		return false;
                
      }
   
   
   
    
    
        return true;
}

	
	
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="16_6.jpg">
<form action="RegistrationController" name="myform" onsubmit= "return validate()" method="post">

<h1 align="center" style="color:lightblue">Registration Page</h1>

<table align="center" border="1">



<tr><td>UserName:</td><td><input type="text" name="username" required onblur= "uname1(this.id,this.value)"></td></tr>

<tr><td>Password:</td><td><input type="password" name="password" required onblur= "pwd1(this.id,this.value)"></td></tr>


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
<input type="submit" value="Register">


</form><br><br><br>
<div id="footer" style="background-color:#COCOCO;clear:both;text-align:center;">
Copyright © Tech Mahindra Diagnostics Private Limited</div>

</body>
</html>