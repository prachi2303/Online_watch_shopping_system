<%-- 
    Document   : user_login
    Created on : 25 Jan, 2023, 10:32:05 AM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_login1.css" %></style>

        
       </head>
    
    <body>
         <form action="user_login" method="post">
       
            <div class="col-sm-6">
                <div class="box"><br>
                    
                
                    <h1><b><center>Login Form</center></b></h1>
                    <input type="text" class="textbox"name="user_name" placeholder="User Name"><br>
                    <input type="password" class="textbox"name="password" placeholder="Password"><br><br>
                    <div class="row">
                        <div class="col-sm-6"><input type="checkbox" value="Remember me" style="margin-left: 50px;">Remember me </div>
                        
                        <div class="col-sm-6"><a style="margin-left: 20px;" href="user_signup.jsp">Create Account</a></div>
                    </div>
                      <input type="submit" class="button"name="submit" id="go" value="login"><br> 
                 </div>
        </div>        
    </div>
    </form>
    </head>
    </body>
</html>
