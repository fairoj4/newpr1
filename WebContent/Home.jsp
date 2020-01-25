<%@page import="beans.Basic"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script>
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
 </head>
<body background="16_6.jpg";>
<% Basic b=(Basic)session.getAttribute("user"); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<strong>Logged in as <%=b.getUserName() %></strong>
<center><h1 style="color:lightblue"><b>Welcome to Tech Mahindra Diagnostic Center</b></h1></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
<center><br>
<b><a href="AboutUs.html"  type="button" class="btn btn-default" style="color:black">About us</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b><a href="TestMenuController" type="button" class="btn btn-default" style="color:black">Test Menu</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b><a href="PatientRegistration.jsp" type="button" class="btn btn-default" style="color:black">Registration</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b><a href="DeliverReport.jsp" type="button" class="btn btn-default" style="color:black">Get Report</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<b><a href="Contactus.html" type="button" class="btn btn-default" style="color:black">Contact Us</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<b><a href="Logout.jsp" type="button" class="btn btn-default" style="color:black">Logout</a></b>
</center>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="16_6.jpg"  width="560" height="345">
        
      </div>

      <div class="item">
        <img src="8_1.jpg"  width="560" height="345">
        
      </div>
    
      <div class="item">
        <img src="10_2.jpg"  width="560" height="345">
        
      </div>

      <div class="item">
        <img src="result.jpg"  width="560" height="345"> 
        </div>
      
  
    </div>

    
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


 
<br>
<br>
<body  onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=""></body>

</body>
</html>
