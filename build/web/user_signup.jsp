<%-- 
    Document   : user_signup
    Created on : 10 Feb, 2023, 8:28:39 PM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="homepage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_Signup</title>
        
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/user_signup.css" %></style>
         <script type="text/javascript" src="css/validation.js"></script>
    </head>
    <body>
        
        <form action="user_signup" method="post">
         <div class="whitediv">
        <div class="title"><center><h3 class="titlelable">Signup Here</h3></center></div>
        </br>
        <div class ="row">
            <div class ="col-sm-6"><label class="innerlabel">First Name</label></div>
            <div class="col-sm-6"><input type="text" class="textbox" onkeypress="return isString(event)" name="first_name"  placeholder="Enter First Name"></div>
        </div>
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">Last Name</label></div>
            <div class="col-sm-6"><input type="text" class="textbox"name="last_name"onkeypress="return isString(event)" placeholder="Enter Last Name"></div>
        </div>
        
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">Address</label></div>
            <div class="col-sm-6"><input type ="text" class="textbox"name="address" placeholder="Enter Address"></div>
        </div>
         
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">Email Id</label></div>
            <div class="col-sm-6"><input type ="text" class="textbox" name="email_id"placeholder="Enter Email Id"></div>
        </div>
        
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">Contact</label></div>
            <div class="col-sm-6"><input type ="text" class="textbox" name="contact"placeholder="Enter Contact"></div>
        </div>
        
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">User Name</label></div>
            <div class="col-sm-6"><input type="text" class="textbox"name="user_name" placeholder="Enter Username"></div>
        </div>
         <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">Password</label></div>
            <div class="col-sm-6"><input id="text" class="textbox"name="password"  placeholder="Enter Password"></div>
         </div>
         <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">Conform_Password</label></div>
            <div class="col-sm-6"><input type="text" class="textbox"name="conform_password" placeholder="CONFIRM PASSWORD"></div>
        </div>
        <center><input type="submit" class="signupbutton" name="submit"value="SIGNUP"></center>
        <br><br>
        
        <br>
    </div>
        </form>
    </body>
</html>
