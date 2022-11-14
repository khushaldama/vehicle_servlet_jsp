<%-- 
    Document   : index
    Created on : 11 Nov, 2022, 1:57:14 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
    <center>
        <form action="vehicleServlet" method="post" style="border: 2px solid black; margin-top: 150px;width: 30%;">
            <h2><label>Vehicle Details</label></h2>
            <label>Vehicle Id:</label>
            <input type="text" placeholder="enter vehicle id" name="vid">
            <br><br>
            <label>Vehicle Name:</label>
            <input type="text" placeholder="enter vehicle name" name="vname">
            <br><br>
            <label>Vehicle Fuel Capacity:</label>
            <input type="text" placeholder="enter vehicle fuel capacity" name="vfc">
            <br><br>
            <label>Vehicle Milage:</label>
            <input type="text" placeholder="enter vehicle milage" name="vmil">
            <br><br>
            <input type="submit" value="Insert" name="btnin">
            <br><br>
        </form>
    </center>
</body>
</html>
