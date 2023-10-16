<%-- 
    Document   : product_report
    Created on : 28 Jan, 2023, 10:30:30 AM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>product_report</title>
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/product_report.css"%></style>
        <%@include file="user_navbar.jsp"%>
        </head>
    <body>
        <br>
        <form name="product_report" action="product_report" method="post">
        <div class="whitediv"><br>
            <div class="div1"> <h1><label style="color:darkcyan">Feedback-</label></h1></div>
            <input type="text" class="textbox1" name="feedback" placeholder="Feedback">
            <div class="row">
                <div class="col-sm-6">
                   <input type="submit" class="button" name="submit" id="go"value="Cancel"><br>   
                </div>
                <div class="col-sm-6">  
                   <input type="submit" class="button1" name="submit" id="go1" value="Submit"><br>
            </div>
        </div>
        </div>
</form>
    </body>
</html>
