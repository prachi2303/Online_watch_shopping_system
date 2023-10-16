<%-- 
    Document   : movie_list
    Created on : 25 Mar, 2023, 3:32:23 PM
    Author     : Jilani
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie List </title>
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/report_page.css"%></style>
        
        
  </head>
    <body>
        
        <br><br>
        <div class="whitediv">
            <br>
            <h1><center>Movie List</center></h1>
            <hr>
            <div class="row">
                <div class="col-sm-2"><hr> <b><i><center>ID</center></i></b><hr></div>
                <div class="col-sm-2"><hr> <b><i><center>Movie</center></i></b><hr></div>
                <div class="col-sm-2"><hr> <b><i><center>Casting</center></i></b><hr></div>
                <div class="col-sm-2"><hr> <b><i><center>Date</center></i></b><hr></div> 
                <div class="col-sm-2"><hr> <b><i><center>Bookings</center></i></b><hr></div>
                <div class="col-sm-2"><hr> <b><i><center>Action</center></i></b><hr></div>
            </div>
            
            <%
                Connection cn = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_movie_ticket_booking_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from admin_assistant ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {

            %>
            <form name="movie_list" action="movie_list" method="post">
            <div class="row">
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("id")%></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("movie_name")%></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("casting")%></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("release_date")%></center></i></b><hr></div>  
                <div class="col-sm-2"><hr><b><i><center><input type="submit" name="submit" value="Bookings"></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><input type="submit" name="submit" value="Delete"></center></i></b><hr></div>
            </div>
            </form>       
            <%
                           }
            %>
                     
                
                
             
            
            <div class="row">
                <div class="col-sm-3">
                    <input class="button" type="submit" value="Cancel Ticket" name="submit">
                </div>
                <div class="col-sm-3">
                    <input class="button1" type="submit" value="Feedback" name="submit">
                </div>
            </div>
         </div>
        </form>
    </body>
</html>
