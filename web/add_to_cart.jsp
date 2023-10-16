
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : add_to_cart
    Created on : 1 Feb, 2023, 9:27:30 AM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add_to_cart</title>
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/add_to_cart.css" %></style>
        <%@include file="user_navbar.jsp"%>
        
    </head>
    <body>
        <br>
        <div class="whitediv" style="height: auto;">
            <div class="row">
                <div class="col-sm-2">
                    <hr>
                    <b><i><center>item</center></i></b>
                    <hr>
                    
                </div>
                <div class="col-sm-2">
                    <hr>
                    <b><i><center>ID</center></i></b>
                    <hr>
                </div>
                <div class="col-sm-2">
                    <hr>
                    <b><i><center> Product</center></i></b>
                    <hr>
                </div>
                
                <div class="col-sm-2">
                    <hr>
                    <b><i><center> Color </center></i></b>
                    <hr>
                </div>
                <div class="col-sm-2">
                    <hr>
                    <b><i><center>Price</center></i></b>
                    <hr>
                </div>
                 <div class="col-sm-2">
                    <hr>
                    <b><i><center>Action</center></i></b>
                    <hr>
                </div>
            </div>
            
             <%
                Connection cn=null;
                Statement st=null;
                
                Class.forName("com.mysql.jdbc.Driver");
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                      st = cn.createStatement();
                     
                     
                     String sql="select * from add_to_cart where user_id = '"+session.getAttribute("user_id") +"' ";
                       ResultSet rs= st.executeQuery(sql);
                       
                       while(rs.next())
                                                    
                           {
                %>
            
                <form name="add_to_cart" action="add_to_cart" method="post">
                    <div class="row">

                        <input type="hidden" name="id" value="<%=rs.getString("watch_id")%>">

                        <div class="col-sm-2">
                              <hr>
                              <div class="img" style=" background-image: url('images/<%=rs.getString("select_image")%>');">
                              </div> 
                             <hr>
                             <div class="watch5">

                             </div>

                        </div>
                             <div class="watch6">

                             </div>
                             <div class="col-sm-2">
                                  <hr>
                                 <label></label>
                                  <b><i><center><%=rs.getString("id")%></center></i></b>
                                  <br>
                                  <br>
                                 <hr>
                              </div>
                             <div class="col-sm-2">
                                 <hr>
                               <label></label>
                               <b><i><center><%=rs.getString("watch_name")%></center></i></b>
                               <br>
                               <br>
                               <hr>
                             </div>
                             <div class="col-sm-2">
                                 <hr>

                                <label></label>
                                 <b><i><center><%=rs.getString("color")%></center></i></b>
                                 <br>
                                 <br>
                                 <hr>

                             </div>
                        <div class="col-sm-2">
                            <hr>
                            <label></label>
                             <b><i><center><%=rs.getString("price")%></center></i></b>
                             <br>
                             <br>
                        </div>
                             <div class="col-sm-2"><b><hr><i><br><center><input type="submit" name="submit" value="Book"></center></i><hr></b></div>
                     </div>
                </form>    
           <%
                               }
           %>
           
           <br><br>
        </div> 

    
    
        
    </body>
</html>
