<%-- 
    Document   : report_page
    Created on : 4 May, 2023, 12:51:07 PM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Page</title>
           <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
            <%@include file="user_navbar.jsp"%>

    </head>
    <body>
        <form name="report_page" action="Report_view.jsp" method="post"> 
        <div class="whitediv">
            <br>
            <center><h1> <label> Report Page</label></h1></center><hr>
            
            <div class="row">
                <div class="col-sm-6"> <input class="button1" type="submit" value="User List" style="font-size:100%" name="submit"> </div>
                <div class="col-sm-6"> <input class="button2" type="submit" value="User Address" style="font-size:100%" name="submit"> </div>
               
            </div>
            <div class="row">
               
                <div class="col-sm-6"> <input class="button3" type="submit" value="User Payment" style="font-size:100%" name="submit"> </div>
                 <div class="col-sm-6"> <input class="button4" type="submit" value="My Orders" style="font-size:100%" name="submit"> </div>
                
            </div>
            <div class="row">
               
                <div class="col-sm-6"> <input class="button5" type="submit" value="Add Watches" style="font-size:100%" name="submit"> </div>
            
           
            
            
            
            
        </div>
        </div>
        </form>
    </body>
    
    
    <style>
body
   {
        background-image: url(images/wback2.jpg);
        background-size: cover;
        background-repeat: no-repeat;        
   }

.whitediv
        {
         height:600px;
         width:700px;
         margin-top:60px;
         margin-left:500px;
         background-color:white;
         border-radius:15px;
        }
        .button1
        {
         height:50px;
         width:170px;
         margin-top:30px;
         margin-left:60px; 
         background-color:#48C9B0;
         color:black;
         border-radius: 5px;
        
         
        } 
        
         .button2
        {
         height:50px;
         width:170px;
         margin-top:30px;
         margin-left:90px; 
         background-color:#48C9B0;
         color:black;
         border-radius: 5px;
        
        } 
         .button3
        {
         height:50px;
         width:170px;
         margin-top:100px;
         margin-left:60px; 
         background-color:#48C9B0;
         color:black;
         border-radius: 5px;
         
        } 
        
         .button4
        {
         height:50px;
         width:170px;
         margin-top:100px;
         margin-left:90px; 
         background-color:#48C9B0;
         color:black;
         border-radius: 5px;
        
        } 
        
        .button5
        {
         height:50px;
         width:170px;
         margin-top:100px;
         margin-left:250px; 
         background-color:#48C9B0;
         color:black;
         border-radius: 5px;
        
        } 
        
       
        
       
    </style>
</html>
