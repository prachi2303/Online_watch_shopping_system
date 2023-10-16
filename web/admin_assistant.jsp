<%-- 
    Document   : admin_assistant
    Created on : 9 Feb, 2023, 9:32:59 AM
    Author     : PRACHI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin_assistant</title>
        
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/admin_assistant.css" %></style>
    </head>
    <body>
        <br>
       
        
       <form action="admin_assistant" method="post"> 
        
         <div class="whitediv">
        <br>
            <h2><center>Add Watches</center></h2>
            <hr>
             <input class="textbox" type="text"name="watch_name" placeholder="Watch name">
              <input class="textbox" type="text"name="features" placeholder="Features">
              <input class="textbox" type="text"name="color" placeholder="color">
              <input class="textbox" type="text"name="price" placeholder="price">
                <div class="row  myclass">
                    <div class ="col-sm-6">
                        <label> Launch Date-</label>
                    </div>
                    <div class ="col-sm-6 myclass2">
                        <input type="date" name="date"> 
                    </div>
                </div>
           
              <input class="textbox" type="file"name="select_image" >
              <div class="row">
                <div class ="col-sm-6">
                    <input class="button" id="go" type="submit" name="submit" value="Cancel">
                </div>
                <div class ="col-sm-6">
                    <input class="button1"id ="go"type="submit" name="submit" value="Add Watches">
                </div>
            </div>
        </div>
  
       </form>
    </body>
</html>
