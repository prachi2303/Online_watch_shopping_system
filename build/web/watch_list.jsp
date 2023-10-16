<%-- 
    Document   : watch_list
    Created on : 31 Mar, 2023, 2:42:13 PM
    Author     : PRACHI
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
    <b><title>Watch List </title></b>
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/watch_list.css"%></style>
        
        
  </head>
    <body>
        
        <br><br>
        <div class="whitediv">
            <br>
            <h1><center>Watch List</center></h1>
            <hr>
            <div class="row">
                <div class="col-sm-2"><hr> <b><i><center>id</center></i></b><hr></div>
                <div class="col-sm-2"><hr> <b><i><center>watch Name</center></i></b><hr></div>
                <div class="col-sm-2"><hr> <b><i><center>features</center></i></b><hr></div> 
                <div class="col-sm-2"><hr> <b><i><center>Price</center></i></b><hr></div>
                <div class="col-sm-2"><hr> <b><i><center>Bookings</center></i></b><hr></div>
                <div class="col-sm-2"><hr> <b><i><center>Action</center></i></b><hr></div>
                
            </div>
            
            <%
                Connection cn = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from admin_assistant ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {

            %>
            <form name="watch_list" action="watch_list" method="post">
            <div class="row">
                <input type="hidden" name="id" value="<%=rs.getString("id")%>">
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("id")%></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("watch_name")%></center></i></b><hr></div> 
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("features")%></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><%=rs.getString("price")%></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><input type="submit" name="submit" value="Bookings"></center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center><input type="submit" name="submit" value="Delete"></center></i></b><hr></div>
            </div>
            </form>       
            <%
                      }
            %>
         </div>
        </form>
    </body>
</html>
