-<%-- 
    Document   : booking_page
    Created on : 27 Jan, 2023, 10:13:05 AM
    Author     : PRACHI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>booking</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/booking_page.css" %></style>
        
    </head>
     
    
    
    <body>
        <br>
      
        
      <%
        
                      Connection cn = null;
                
                      Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from admin_assistant where id='"+session.getAttribute("id") +"' ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {


        %>
     <form action="booking_page" method="post">
        <div class="whitediv"><br>
            <center><h2>Booking page</h2></center><hr>
            <div class="imagediv">
                
                <img class="image1" src="images/<%=rs.getString("select_image")%>">
                <label> Watch name : <%=rs.getString("watch_name")%></label><br>
                <label> color : <%=rs.getString("watch_name")%> </label><br> 
                <label> Price : <%=rs.getString("price")%></label> <br>
                <label> Features : <%=rs.getString("features")%></label><br> 
                <br>
                <label>Quantity : </label> <input type="text" name="quantity" placeholder="quantity" > <br> <br>
                <label>Total : </label>    <input type="text" name="total" placeholder="total"> 
                
                
                <input type="hidden" name="id" value="<%=rs.getString("id")%>">
                <input type="hidden" name="watch_name" value="<%=rs.getString("watch_name")%>">
                <input type="hidden" name="features" value="<%=rs.getString("features")%>">
                <input type="hidden" name="select_image" value="<%=rs.getString("select_image")%>">
                <input type="hidden" name="price" value="<%=rs.getString("price")%>">
                <input type="hidden" name="color" value="<%=rs.getString("color")%>">
                <input type="hidden" name="date" value="<%=rs.getString("date")%>">
                
                
            </div>
            
             <div class="row">
            <div class="col-sm-6">
            <input class="button" type="submit"name="submit" id="go" value="Add To Cart">
            </div>
            <div class="col-sm-6">
            <input class="button1" type="submit"name="submit" id="go1"value="Buy Now">
            </div>
        </div>
        </div>
                <br><br>
   </form>
        <%
               }
        %>
    </body>
</html>
