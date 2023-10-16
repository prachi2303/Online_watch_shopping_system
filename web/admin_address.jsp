<%-- 
    Document   : admin_address
    Created on : 11 Apr, 2023, 2:22:53 PM
    Author     : PRACHI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
       <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin address</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/admin_address.css"%></style>
         <%@include file="admin_navbar.jsp"%>
    </head>
    <body>
                <br>
        <div class="whitediv">
            <br>
            <center><h1> <b>Admin Address Table</b></h1></center>
            <br>
	<table>
		<thead>
			<tr>
                                <th>Id</th>
                                <th>Name</th>
				<th>lane no.1</th> 
                                <th>Pincode</th>
                                <th>city</th>
                                <th>State</th>
			</tr>
		</thead>
                <%
        
                      Connection cn = null;
                
                      Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from address ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {


        %>


		<tbody>
			<tr>
                                <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("name")%></td>
				<td><%=rs.getString("line_no_1")%></td> 
                                <td><%=rs.getString("pincode")%></td>
                                <td><%=rs.getString("city")%></td>
                                <td><%=rs.getString("state")%></td>
			</tr>
			
		</tbody>
                <%
                               }
       %>
	</table>
        </div>
                
    </body>
</html>

    
