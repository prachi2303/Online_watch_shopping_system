<%-- 
    Document   : admin_navbar
    Created on : 25 Mar, 2023, 3:01:26 PM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <style>
        ul {
              list-style-type: none;
              margin: 0;
              padding: 0;
              width: 25%;
              background-color: #f1f1f1;
              position: fixed;
              height: 100%;
              overflow: auto;
              text-align: center;
              width: 300px;
              border-right:   grey solid 1px;
            }

            li a {
              display: block;
              color: #000;
              padding: 8px 16px;
              text-decoration: none;
              height: 50px;
              text-decoration: none;
              font-size: 20px;
              
            }

            li a.active {
              
              background-color: #555;
              color: white;
              text-decoration: none;
              font-size: 20px;
            }

            li a:hover:not(.active) {
             background-color: grey;
              color: white;
              text-decoration: none;
              font-size: 20px;
            }
            
            .logout
            {
                background-color: white;
            }
    </style>
    </head>
    
    
      <ul>
        <li><a class="active" href="admin_home.jsp">Home</a></li>
        <li><a href="admin_assistant.jsp">Add Watches</a></li>
        <li><a href="watch_list.jsp">Watch list</a></li>
        <li><a href="bookings_admin.jsp">Bookings</a></li>
        <li><a href="user_listadmin.jsp">User List</a></li>
        <li><a href="admin_address.jsp">User address</a></li>
         <li><a href="admin_report.jsp"> Feedbacks</a></li>
        <li><a href="money_rec.jsp">Payment Rec</a></li>
        <li class="logout"><a href="admin_login.jsp">LOGOUT</a></li>
      </ul>
</html>

