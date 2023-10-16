<%-- 
    Document   : home_page
    Created on : 26 Jan, 2023, 9:47:22 AM
    Author     : PRACHI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home </title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/home_page2.css"%></style>
    </head> 
    
    <body>
       
        
        <br>
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
    <form action="home_page" method="post">
       <div class="whitediv" style="margin-left: 340px;margin-top:2%; ">  
           <input type="hidden" name="id" value="<%=rs.getString("id")%>"
                <div class="moviediv">  
                    <div class="row" >
                        <div class="col-sm-6" >
                            <img class="image" src="images/<%=rs.getString("select_image")%>">
                        </div>
                        <div class="col-sm-6" style=" margin-top: 7%; margin-left:-10% ">   
                            <label> Watch Name: <%=rs.getString("watch_name")%></label><br>
                            <label> Color : <%=rs.getString("color")%> </label><br>
                            <label> Price : <%=rs.getString("price")%></label> <br>
                            <label> Features :<%=rs.getString("features")%></label><br>
                            <label> Launch date : <%=rs.getString("date")%> </label>
                            <input class="button" type="submit" value="Book" style="font-size:100%"name="submit">        
                        </div>
                    </div>
           </div>
                            
             
        
          
   </form> 
                <%
                               }
       %>
        
    </body>
</html>












