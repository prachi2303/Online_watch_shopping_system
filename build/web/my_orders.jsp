<%-- 
    Document   : my_orders
    Created on : 3 Feb, 2023, 6:09:47 PM
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
        <title>my_orders</title>
        
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/my_orders.css" %></style>
       
  
    </head>
    <body>
        <form name="my_orders" action="my_orders" method="post">
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
                    <b><i><center>Product</center></i></b>
                    <hr>
                    
                </div>
                <div class="col-sm-2">
                    <hr>
                    <b><i><center> color</center></i></b>
                    <hr>
                </div>
                
                <div class="col-sm-2">
                    <hr>
                    <b><i><center> Price </center></i></b>
                    <hr>
                </div>
                <div class="col-sm-2">
                    <hr>
                    <b><i><center>Cancel Order</center></i></b>
                    <hr>
                </div>
                
                 <div class="col-sm-2">
                    <hr>
                    <b><i><center>Delivery Date</center></i></b>
                    <hr>
                    <br>
                    
                </div>
            </div>
                
                <%
                Connection cn=null;
                Statement st=null;
                
                Class.forName("com.mysql.jdbc.Driver");
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                      st = cn.createStatement();
                     
                     
                     String sql="select * from  my_orders where user_id = '"+session.getAttribute("user_id")+"'";
                       ResultSet rs= st.executeQuery(sql);
                       
                       while(rs.next())
                                                    
                           {
                %>
                
                <div class="row">
                    <input type="hidden" name="id" value="<%=rs.getString("id")%>">
                <input type="hidden" name="watch_name" value="<%=rs.getString("watch_name")%>">
                <input type="hidden" name="color" value="<%=rs.getString("color")%>">
                <input type="hidden" name="price" value="<%=rs.getString("price")%>">
                <input type="hidden" name="delivery_date" value="<%=rs.getString("delivery_date")%>">
               
                <div class="col-sm-2">
                     
                    <hr>
                    <label></label>
                    <b><i><center><div class="img" style=" background-image: url('images/<%=rs.getString("select_image")%>');">
                              </div></center></i></b>
                    <hr>
                    
                </div>
                <div class="col-sm-2">
                    <hr>
                    <label></label>
                    
                    <b><i><center><%=rs.getString("watch_name")%></center></i></b><hr>
                    
                    
                </div>
                <div class="col-sm-2">
                    <hr>
                    <b><i><center><%=rs.getString("color")%></center></i></b>
                    <hr>
                </div>
                
                <div class="col-sm-2">
                    <hr>
                    <b><i><center> <%=rs.getString("price")%> </center></i></b>
                    <hr>
                </div>
                <div class="col-sm-2"><hr><b><i><center><input type="submit" name="submit" value="Cancel"></center></i></b><hr></div>
                 <div class="col-sm-2">
                    <hr>
                    <b><i><center><%=rs.getString("delivery_date")%> Date</center></i></b>
                    <hr>
                    <br>
                    
                </div>

 
          
            </div>
          
            

            <%
                       }
            %>
            
            </div>
            </form>
    </body>
   
</html>
   


