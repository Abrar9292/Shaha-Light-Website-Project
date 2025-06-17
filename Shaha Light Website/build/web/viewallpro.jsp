<%-- 
    Document   : viewallpro
    Created on : 18 Feb, 2025, 5:58:28 PM
    Author     : ASUS
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table border="2">
        <%
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","merateddy","jateddy");
            Statement stmt=con.createStatement();
            
            ResultSet rs=stmt.executeQuery("Select * from lightpro");
            %>
            
            <%=
                "<tr><th>Product Id</th><th>Product Name</th><th>Model Name </th><th>Description</th><th>Conpany</th><th>Type</th><th>Supplier Name</th><th>Supplier Mobile No</th><th>Supplier Address</th><th>Quantity</th><th>Seeling Price</th></tr>"
                %>
            
            <%
             while(rs.next())
            {
                %>
           <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getLong(8)%></td>
                <td><%=rs.getString(9)%></td>
                <td><%=rs.getInt(10)%></td>
                <td><%=rs.getInt(11)%></td>
            
            <%}%>        
           </table>
    </body>
</html>
