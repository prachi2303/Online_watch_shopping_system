<%-- 
    Document   : money_rec
    Created on : 1 Apr, 2023, 2:23:54 PM
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
        <title>money rec</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/moeny_rec.css"%></style>
         <%@include file="admin_navbar.jsp"%>
    </head>
    <body>
        <br>
        <div class="whitediv">
            <br>
            <center><h2><b>Payment Receiver Table</b></h2></center><br>
	<table>
		<thead>
			<tr>    
                            <th>Uaer Id</th>
				<th>Name</th>
				<th>Phone Number</th>
                                <th>Payment Method</th>
				<th>Amount</th>
			</tr>
		</thead>
		<tbody>
                    <%
                    Connection cn=null;
                    Statement st=null;
                    
                    
                    Class.forName("com.mysql.jdbc.Driver");
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                     st = cn.createStatement(); 
                     String sql="select * from  user_payment ";
                     ResultSet rs= st.executeQuery(sql);
                     while(rs.next())
                                                 {
                    %>
			<tr>
                            <td><%=rs.getString("user_id")%> </td>
                            <td><%=rs.getString("name")%> </td>
				<td><%=rs.getString("phone_no")%></td>
                                <td><%=rs.getString("payment_method")%></td>
                                <td><%=rs.getString("amount")%></td>
			</tr>
                        <%
                                               }
                        %>
		</tbody>
	</table>
</div>
    </body>
</html>

