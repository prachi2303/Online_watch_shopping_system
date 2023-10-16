<%-- 
    Document   : bookings_admin
    Created on : 26 Mar, 2023, 3:06:54 PM
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
        <title>Bookings</title>
          <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
          <style><%@include file="css/bookings_admin.css"%></style>
        
    </head>
    <body>
        <br>
        <form name="bookings_admin" action="bookings_admin" method="post">
        <div class="whitediv">
            <br> <h1><center>Bookings</center></h1><hr>
            <div class="row">
                <div class="col-sm-2"><hr><b><i><center>id</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>User Id</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>watch Name</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Quantity</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Date</center></i></b> <hr></div>
                <div class="col-sm-2"><hr><b><i><center>Money Rec</center></i></b><hr></div>
                
            </div>
            
            
            <%
                Connection cn = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                      Statement st=cn.createStatement(); 
                      String sql="select * from my_orders ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {

            %>
            
            
            <div class="row">
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("id")%></center></i></b></div>
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("user_id")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("watch_name")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("quantity")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("date")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("order_status")%></center></i></b><br></div>
                 
            </div>
             <%
                      }
            %>
        </div>
         </form>
    </body>
</html>
