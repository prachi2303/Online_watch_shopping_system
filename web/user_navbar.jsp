<%-- 
    Document   : user_navbar
    Created on : 25 Mar, 2023, 2:48:05 PM
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
        <li><a class="active" href="home_page.jsp">Home</a></li>
        <li><a href="add_to_cart.jsp">My Cart</a></li>
        <li><a href="product_report.jsp">Feedback</a></li>
         <li><a href="my_orders.jsp">My Orders</a></li>
         <li><a href="user_profile.jsp">Profile</a></li>
         <li><a href="report_page.jsp">Report</a></li>
        <li class="logout"><a href="user_login.jsp">LOGOUT</a></li>
      </ul>
</html>

