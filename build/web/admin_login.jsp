<%-- 
    Document   : admin_login
    Created on : 25 Jan, 2023, 10:36:43 AM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>     
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin_login</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
          <style><%@include file="css/admin_login.css"%></style>
  
    </head>
    
     <form action="admin_login" method="post">
     <body>
        <div class="whitediv">
            <br>
            <b><h2><center><b>Admin Login</b></center></h2></b>
            <hr>
            <input class="textbox" type="text" placeholder="Username" name="username">
            <input class="textbox" type="text" placeholder="password" name="password">
            <br>
            <br>
            <br
                <br>
             
             <div class="col-sm-6"><a style="margin-left: 30px;" href="admin_signup.jsp">Signup Here</div>
            <input class="button" type="submit" id="go" value="LOGIN" name="submit">
            
        </div>
     </form>>
    </body>
</html>


