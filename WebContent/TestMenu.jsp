<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="beans.TestMenuCompleteBloodTestProfile" import="beans.TestMenuBean" import="beans.TestMenuWbcProfile" import="beans.TestMenuSugarProfile" import="java.util.List" import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Menu</title>
</head>
<body background="8_1.jpg">
<h3 align="right"><a href="Home.jsp" type="button" class="btn btn-info">Home</a></h3>

<%
List list=(List)request.getAttribute("TestMenu");
List list1=(List)request.getAttribute("TestMenu1");
List list2=(List)request.getAttribute("TestMenu2");
List list3=(List)request.getAttribute("TestMenu3");
%>

<div class="container">
<table  class="table" border="3" align="center" >
<tr class="info" ><th >
<h3 style="color:red" >Complete Urine Test</h3>

</th>
<th>Report can be collected the next day of the test </th>
</tr>



<%
	Iterator<List> itr=list.iterator();

while(itr.hasNext())

{

TestMenuBean tm=(TestMenuBean)itr.next();
%>

<tr>


 

<td><%
 	out.println(tm.getTestname());
 %>

</td>

<td>

<%
	out.println(tm.getTestamount());
%>

</td>





<%
	}
%>


</tr>
<tr class="warning"><td><strong>Total Amount</strong></td><td><strong>Rs 1000</strong></td></tr>
<tr><td></td><td></td></tr>

<tr class="info"><th>
<h3 style="color:red">Complete Blood Test</h3></th>
<th>Report can be collected the next day of the test</th>
</tr>


<%
	Iterator itr1=list1.iterator();

while(itr1.hasNext())

{

TestMenuWbcProfile tm1=(TestMenuWbcProfile)itr1.next();
%>

<tr>


 

<td><%
 	out.println(tm1.getTestname());
 %>

</td>

<td>

<%
	out.println(tm1.getTestamount());
%>

</td>





<%
	}
%>


</tr>
<tr class="warning"><td><strong>Total Amount</strong></td><td><strong>Rs 2000</strong></td></tr>
<tr><td></td><td></td></tr>


<tr class="info"><th>
<h3 style="color:red">Sugar Test</h3>
</th><th>Report can be collected after 4hours of the test</th></tr>



<%
	Iterator itr2=list2.iterator();

while(itr2.hasNext())

{

TestMenuSugarProfile tmr=(TestMenuSugarProfile)itr2.next();
%>

<tr>


 

<td><%
 	out.println(tmr.getTestname());
 %>

</td>

<td>

<%
	out.println(tmr.getTestamount());
%>

</td>





<%
	}
%>


</tr>
<tr class="warning"><td><strong>Total Amount</strong></td><td><strong>Rs 500</strong></td></tr>
<tr><td></td><td></td></tr>

<tr class="info"><th>
<h3 style="color:red">WBC Test</h3>

</th><th>Report can be collected after 4hours of the test</th></tr>


<%
	Iterator itr3=list3.iterator();

while(itr3.hasNext())

{

TestMenuCompleteBloodTestProfile tmb=(TestMenuCompleteBloodTestProfile)itr3.next();
%>

<tr>


 

<td><% 

out.println(tmb.getTestname());


%>

</td>

<td>

<%

out.println(tmb.getTestamount());

%>

</td>





<%

}


%>


</tr>
<tr class="warning"><td><strong>Total Amount</strong></td><td><strong>Rs 300</strong></td></tr>
</table>
</div>

</body>
</html>