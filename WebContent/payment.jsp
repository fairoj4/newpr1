<%@page import="beans.PatientBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="beans.PatientBean" import="beans.CreateReportBean" import="daoimplementation.PatientRegistrationDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org   /TR/html4/loose.dtd">
<html>
    <head>
    <script type="text/javascript">
    function card1(a,b)
    {
     var exp=/^[0-9]{16}$/;
     if(b!=""){
     if(!b.match(exp))
     {
      alert("card number must contain 16 numbers");
      document.myform.mobile.value="";
      }
     }
     }
    function chn1(a,b){
    	var exp=/^[A-Za-z]{4,16}$/;
    	if(b!=""){
    		if(!b.match(exp)){
    			alert("enter a valid card holder name");
    			document.myform.chn.value="";
    		}
    	}
         
    }
    
   
    function cvv1(a,b)
    {
     var exp=/^[0-9]{3}$/;
     if(b!=""){
     if(!b.match(exp))
     {
      alert("CVV must contain 3 numbers");
      document.myform.cvv.value="";
      }
     }
     }
     function validate()
      {
    	 if(document.myform.card.value==""){
     		alert("Enter valid card number");
     		return false;
     	} 
    	 if(document.myform.chn.value==""){
    			alert("Enter valid Card Holder Name");
    			return false;
    		}
    	
    	 if(document.myform.cvv.value==""){
        		alert("Enter valid CVV number");
        		return false;
        	} 
           
      }
    
    </script>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        
        <title> Payment &nbsp;&nbsp;Page</title>
        </head>
        <script>
{
	window.history.forward();
	}
</script>
    <body background="16_6.jpg">
   <%PatientBean pb=(PatientBean)request.getAttribute("patient"); %>
    <%int totalamount=(pb.getCompleteurinetestamount()+pb.getCompletebloodtestamount()+pb.getSugartestamount()+pb.getWbctestamount());%>
   
 
       <center><h1 style="color:lightblue">Welcome to Tech Mahindra Diagnostics Payment Page</h1></center>
       <h4><marquee>Please do not press Refresh Button or Backspace Button after pressing Proceed Button and while transaction processing</marquee></h4>       
       <center><img src="1.jpg" alt="Secure Page" height="250" width="900"></center>
 <form action="PaymentDone.jsp"  name="myform" onsubmit="return validate()" method="post">
<p align="center">Total amount to be paid = Rs <%=totalamount%></p>
        <table align="center" >
     
<tr><td>Card Number</td><td><input type="text" name="card" onblur="card1(this.id,this.value)"></td></tr>
<tr><td>Card Holder Name</td><td><input type="text" name="chn" onblur="chn1(this.id,this.value)"></td></tr>
<tr><td> Card Expiry Month&nbsp;&nbsp;  (MM)</td><td>
<select name="">
<option value="select">Select</option>

  <% int i=1;
  while(i<13)
  {%>
  <option value="<%=i %>"><%=i %></option>
  <%i++;} %>
 </select>
</td></tr>
<tr><td>Card Expiry Year&nbsp;&nbsp;   (YYYY)</td><td>
<select name="">
<option value="select">Select</option>
  <% int j=2014;
  while(j<2030)
  {%>
  <option value="<%=j %>"><%=j %></option>
  <%j++;} %>
 </select>
</td></tr>
<tr><td>CVV</td><td><input type="password" name="cvv" onblur="cvv1(this.id,this.value)"></td></tr>
<tr><td colspan="3" align="center"><center><input type="submit" value="proceed"></center></td></tr>
        </table>
        </form>
    </body>
</html>
