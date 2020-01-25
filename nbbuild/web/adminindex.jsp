<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Index Page</title>
<style>
body {
    background-image: url("images/adminhome.jpg");
}

h1 {
    color: white;
    text-align: center;
}

p {
    font-family: verdana;
    font-size: 20px;
}
a {
	color: white;
}
</style>
</head>
<body>
	<center><h1>Admin Home</h1></center><br>
	<br>
	<div class="boxed" >
	<a href="addvendor.jsp" ><p> Add Vendors</p></a>
	</div><br/><hr><br/>
	<div  class="boxed">
	 <a href="viewvendor.jsp" ><p> View Vendors</p></a>
	</div><br/><hr><br/>
	<div  class="boxed" >
	<a href="logout.jsp"> <p>Log Out</p></a>
	</div><hr>
</body>
</html>
