<%-- 
    Document   : index
    Created on : 25 Jan, 2023, 10:24:09 AM
    Author     : PRACHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    </head>
    <body>
        <br><br><br>
        <div class="myclass"><p style="color:white"><b>Online Watch Shopping System</b></p></div>
        <div class="myclass2"> 
            <div class="row">
                <div class="col-sm-6">
                    <a href="user_login.jsp"> <input type="submit" class="button1" id="go" value="User login" name="submit"></a></div>
                <div class="col-sm-6">
                    <a href="admin_login.jsp"> <input type="submit" class="button2" id="go" value="Admin login" name="submit"></a></div>
        </div>        
        
<style>
body
{
    background-image: url(images/band.jpg);
    background-size: cover;
    background-repeat: no-repeat;
}
.myclass2
{
    height:300px;
    width:250px;
    border-radius:15px;
    margin-left:1200px;
    margin-top:180px;
    background-color:transparent;
    opacity:80%;
}
p
{
  display: center;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  margin-top: 25px;
  margin-left: 50px;
  margin-right: 50px;
  font-size: 70pt;
  font-family: Gautami;
  background-color: transparent;
  opacity: 70%;
  border-radius:15px;
}

.button1    {
                height: 50px;
                width: 150px;
                margin-top: 200px;
                margin-left:-60px;
                padding:8px;
                background-color:#C84242;
                color: white;
                border-radius: 10px;
                border: none;
                font-size:120%
            }
 .button2    {
                height: 50px;
                width: 150px;
                margin-top: 200px;
                margin-left:5px;
                padding:8px;
                background-color:#C84242;
                color: white;
                border-radius: 10px;
                border: none;
                font-size:120%
            }
           
            
            
           input#go:hover
            {
                background-color: #515A5A  ;
                 color: white
            }
myclass2
{
    background-color:black;
}
</style>
</body>
</html>