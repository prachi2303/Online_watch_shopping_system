<%-- 
    Document   : admin_report
    Created on : 1 May, 2023, 12:54:16 PM
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
        <title>Feedback For Admin</title>
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
       
         <%@include file="admin_navbar.jsp"%>
    </head>
    <body>
        <br>
         <div class="whitediv"><br>
        <center><b><h1>Feedback Table</h1></b></center>
            <hr>
       
	<table>
		<thead>
			<tr>
                                <th>User Id</th>
                                <th>Name</th>				
                                <th>Feedback</th>
			</tr>
		</thead>
                  <%
        
                Connection cn = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                      cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                      Statement st=cn.createStatement();
                     
                     
                      String sql="select * from product_report ";
                      ResultSet rs= st.executeQuery(sql);

                      while(rs.next())
                     {


        %>
		
                <tbody>
			<tr>
                                <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("user_name")%></td>
                                <td><%=rs.getString("feedback")%></td>
			</tr>
			 
		</tbody>
                   <%
                      }
          %>
        </table>
         </div>
    </body>


<style>
    body
   {
        background-image: url(images/123.jpg);
        background-size: cover;
        background-repeat: no-repeat;        
   }
   
     .whitediv
{
     height: auto;
    width: 1100px;
    background-color:white;
    margin-left: 25%;
    margin-top: 0;
    border-radius: 10px;
   
}

               table     
               {
			border-collapse: collapse;
			width: 100%;
			margin-bottom: 20px;
		}

		th, td 
                {
			text-align: left;
			padding: 8px;
			border-bottom: 1px solid #ddd;
		}

		th 
                {
			background-color: #f2f2f2;
		}

		tr:hover
                {
			background-color: #f5f5f5;
                }
</style>
</html>