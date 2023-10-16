<%-- 
    Document   : admin_signup
    Created on : 10 Feb, 2023, 8:48:35 PM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="homepage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin_signup</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/admin_signup.css" %></style>
        <script type="text/javascript" src="css/validation.js"></script>        
    </head>
    <body>
        
        <form action="admin_signup" method="post">
         <div class="whitediv">
        <div class="title"><center><h3 class="titlelable">SIGNUP_HERE</h3></center></div>
        </br>
        <div class ="row">
            <div class ="col-sm-6"><label class="innerlabel">Admin NAME</label></div>
            <div class="col-sm-6"><input type="text" class="textbox"name="admin_name"onkeypress="return isString(event)" placeholder="ENTER NAME"></div>
        </div>
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">MOBILE NO</label></div>
            <div class="col-sm-6"><input type="text" class="textbox"name="mobile_no"onkeypress="return isNumber(event)"maxlength="10" placeholder="ENTER PHONE NO"></div>
        </div>
        
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">CITY</label></div>
            <div class="col-sm-6"><input type ="text" class="textbox"name="city"onkeypress="return isString(event)" placeholder="ENTER CITY NAME"></div>
        </div>
         
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">EMAIL ID</label></div>
            <div class="col-sm-6"><input type ="text" class="textbox"name="email_id" placeholder="ENTER EMAIL ID"></div>
        </div>
        
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">USER NAME</label></div>
            <div class="col-sm-6"><input type="text" class="textbox"name="user_name" placeholder="ENTER USERNAME"></div>
        </div>
         <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">PASSWORD</label></div>
            <div class="col-sm-6"><input id="text" class="textbox" name="password" placeholder="ENTER PASSWORD"></div>
         </div>
         <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">CONFIRM_PASSWORD</label></div>
            <div class="col-sm-6"><input type="text" class="textbox"name="conform_password" placeholder="CONFIRM_PASSWORD"></div>
        </div>
        <center><input type="submit" class="signupbutton" name="submit"value="SIGNUP"></center>
        <br><br>
        
        <br>
    </div>
        </form>
    </body>
</html>
