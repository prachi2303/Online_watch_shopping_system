<%-- 
    Document   : history_table
    Created on : 13 Feb, 2023, 3:28:39 PM
    Author     : PRACHI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>history_table</title>
        
           <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/history_table.css" %></style>
  
    </head>
    
   	<body>
            <table>
                <thead>
                <th>sr.no</th>
                <th>First Name</th>
                
                
                <th>Last Name</th>
                <th>Address</th>
                <th>Email Id</th>
                <th>User Name</th>
                </thead>
                <%
                Connection cn=null;
                Statement st=null;
                
                Class.forName("com.mysql.jdbc.Driver");
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                      st = cn.createStatement();
                     
                     
                     String sql="select * from user_signup ";
                       ResultSet rs= st.executeQuery(sql);
               
                       while(rs.next())
                                                    
                           {
                %>
                <tr>
                    <td><%=rs.getString("id")%> </td>
                     <td><%=rs.getString("first_name")%> </td>
                      <td><%=rs.getString("last_name")%> </td>
                       <td><%=rs.getString("address")%> </td>
                        <td><%=rs.getString("email_id")%> </td>
                         <td><%=rs.getString("user_name")%> </td>
                </tr>
                <%
                               }
                %>
            </table>
    </body>
  
    
    
</html>
