<%-- 
    Document   : user_address
    Created on : 28 Jan, 2023, 9:08:53 PM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_address</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
       <style><%@include file="css/user_address.css" %></style>
       <script type="text/javascript" src="css/validation.js"></script>


        
    </head>
    
        
        
         
    <body>
        <br>
        <form action="user_address" method="post">
         <div class="whitediv" >
             <br>
             <h1><center>Address</center></h1>
            <hr>
            <input class="hidden"  type="text" name="id" placeholder="id ">
            <input class="hidden"  type="text" name="user_name" placeholder="user name">
            <input class="textbox" type="text"name="name" placeholder="Name">
            <input class="textbox" type="text"name="contact" placeholder="Contact">
            <input class="textbox" type="text"name="lane_no_1" placeholder="Line NO1">
            <input class="textbox" type="text"name="pin_code"onkeypress="return isNumber(event)"maxlength="6" placeholder="PIN CODE">
            <input class="textbox" type="text"name="city"onkeypress="return isString(event)" placeholder="City">
            <input class="textbox" type="text"name="state"onkeypress="return isString(event)" placeholder="state">
           
            <div class="row">
                <div class="col-sm-6">
                      <input class="button1" type="submit"name="submit" id="go1" value="Cancel">
                </div>
               
            
            <div class="col-sm-6">
                      <input class="button" type="submit"name="submit" id="go"value="Submit">
                </div>
            </div>
        </div>
        </form>
    </body>
</html>
