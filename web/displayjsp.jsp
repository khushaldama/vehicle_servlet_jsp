<%-- 
    Document   : displayjsp
    Created on : 12 Nov, 2022, 10:49:24 AM
    Author     : admin
--%>
<%@page import="java.sql.*"%> 
<%@page import="java.io.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW RECORDS</title>
    </head>
    <body>
        
    <center>
        <h1>Display All Record</h1>
        <table class="table">
            <thead class="thead-dark">
                <tr style="text-align: center"><b>
                <th scope="col">Vehicle Id &nbsp;&nbsp;</th>
                <th scope="col">Vehicle Name &nbsp;&nbsp;</th>
                <th scope="col">Vehicle Fuel Capacity &nbsp;&nbsp;</th>
                <th scope="col">Vehicle Milage &nbsp;&nbsp;</th>
                <th scope="col">Vehicle Total KM on Full Tank &nbsp;&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/052", "root", "");
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from vehicle");

                            while (rs.next()) {

                                /*out.print("<h3>" + rs.getInt("id") + "</h3");
                    out.print("<h3>" + rs.getString("name") + "</h3>");
                    out.print("<h3>" + rs.getInt("fuel") + "</h3>");
                    out.print("<h3>" + rs.getInt("milage") + "</h3>");
                                 */%>
                    <tr style="text-align: center">
                        <th scope="row"><b><% out.println(rs.getInt("id")); %></b></th>
                        <td scope="row"><b><% out.println(rs.getString("name")); %></b></td>
                        <td scope="row"><b><% out.println(rs.getInt("fuel")); %></b></td>
                        <td scope="row"><b><% out.println(rs.getInt("milage"));%></b></td>
                        <td scope="row"><a href="totalkmjsp.jsp?id=<%=rs.getInt("id")%>&m=<%=rs.getInt("milage")%>&f=<%=rs.getInt("fuel")%>">Total Range of &#128663; </a></td>
                    </tr> 
                    <%              }
                        } catch (Exception e) {
                            e.printStackTrace();
                            //out.println(e);

                        }
                    %>
                </tbody>
        </table>
    </center>
</body>
</html>
