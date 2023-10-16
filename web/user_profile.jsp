<%-- 
    Document   : user_profile
    Created on : 28 Jan, 2023, 8:48:02 PM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_profile</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_profile.css" %></style>
        <script type="text/javascript" src="css/validation.js"></script>
        <%@include file="user_navbar.jsp"%>
    </head>
      <body>
          <br><br>
          <form action="user_profile" method="post">
  
              
           <div class="whitediv">
        <div class="title"><center><h3 class="titlelable">Profile</h3></center></div>
        </br>
        <div class ="row">
            <div class ="col-sm-6"><label class="innerlabel">Name :</label></div><br>
            <div class="col-sm-6" class="lab"><%=session.getAttribute("user_name")%></div><br><br>
        </div>
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">Surname Name :</label></div><br><br>
            <div class="col-sm-6"><%=session.getAttribute("last_name")%></div>
        </div>
        
        
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">Email Id :</label></div><br><br>
            <div class="col-sm-6"><%=session.getAttribute("email_id")%></div>
        </div>
        
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">Contact :</label></div><br><br>
            <div class="col-sm-6"><%=session.getAttribute("contact")%></div>
        </div>
        
        <div class="row"> 
            <div class="col-sm-6"><label class="innerlabel">Address :</label></div><br><br>
            <div class="col-sm-6"><%=session.getAttribute("address")%></div>
        </div>
        
        
       
    </div>
          </form>
          
      </body>
</html>
