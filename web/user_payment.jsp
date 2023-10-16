<%-- 
    Document   : user_payment
    Created on : 7 Feb, 2023, 3:34:18 PM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_payment.css" %></style>
        <script src="css/validation.js"></script>
        <%@include file="user_navbar.jsp"%> 
        <title>user_payment</title>
        
        
    </head>
    
    <body>
        <br>
        
        <form name="user_payment" action="user_payment" method="post">
 
        <div class="whitediv ">
            <br>
            <h2><center>Payment Gateway</center></h2>
            <hr>
            <input class="textbox" type="text" name="name" onkeypress="return isString(event)" placeholder=" Name">
            <input class="textbox" type="text" name="phone_no" onkeypress="return isNumber(event)" maxlength="10" placeholder="Phone No">
            <input class="textbox" type="text" name="amount" onkeypress="return isNumber(event)" maxlength="20" value="<%=session.getAttribute("total")%>">
            <br>
            <div class="myclass">
            <label> Payment method-</label> 
            </div>
                <select class="textbox" name="payment_method">
                <option name="payment_method">Select</option>
                <option name="payment_method">card</option>
                <option name="payment_method">Upi</option>
                <option name="payment_method">Net banking</option>
               </select>
          <input class="textbox" type="password" name="card_no" placeholder="Card No/Npi/Net Banking">
        <div class="row">
                <div class ="col-sm-6">
                    <input class="textbox1" type="text" name="otp" placeholder="Otp"> 
                </div>
                <div class ="col-sm-6 ">
                      
                </div>
        </div>
           <input type="submit" name="submit" value="Pay Now" id="go1" class="button">
          
          
        </div>
        </form>
    </body>
    
    
</html>



