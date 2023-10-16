<%-- 
    Document   : user_listadmin
    Created on : 1 Apr, 2023, 2:40:53 PM
    Author     : PRACHI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user list for Admin</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
       
        <style><%@include file="css/user_listadmin.css"%></style>
    </head>
    <body>
        <br>
         <form name="user_listadmin" action="user_listadmin" method="post">
        <div class="whitediv">
            <br> <h1><center>User List</center></h1><hr>        
            <div class="row">
                <div class="col-sm-3"><hr><b><i><center>id</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>name</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Address</center></i></b><hr></div>
                <div class="col-sm-2"><hr><b><i><center>Email Id</center></i></b><hr></div>
                <div class="col-sm-3"><hr><b><i><center>User Name</center></i></b> <hr></div>
                
                
            </div>
                <%
            Connection cn=null;
            Statement st=null;
            
            Class.forName("com.mysql.jdbc.Driver");
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                      st = cn.createStatement(); 
                     String sql="select * from  user_signup ";
                     ResultSet rs= st.executeQuery(sql);
                     while(rs.next())
                                                 {
            %>
            
                <input type="hidden" name="id" value="<%=rs.getString("id")%>">
                <input type="hidden" name="name" value="name" value="name">
                <input type="hidden" name="address" value="address" value="address">
                <input type="hidden" name="address" value="emailid" value="address">
                <input type="hidden" name="user_name" value="user_name" value="user_name">
            <div class="row">
                <div class="col-sm-3"><b><br><i><center><%=rs.getString("id")%></center></i></b></div>
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("first_name")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("address")%></center></i></b><br></div>
                <div class="col-sm-2"><b><br><i><center><%=rs.getString("email_id")%></center></i></b><br></div>
                <div class="col-sm-3"><b><br><i><center><%=rs.getString("user_name")%></center></i></b><br></div>
                </div>
                 <%
                               }
                     %>
        
               
         </form>
    </body>
    
</html>
