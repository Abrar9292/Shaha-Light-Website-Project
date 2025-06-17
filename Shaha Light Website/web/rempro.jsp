<%-- 
    Document   : rempro
    Created on : 18 Feb, 2025, 6:01:32 PM
    Author     : ASUS
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String pname=request.getParameter("n1");
          
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","merateddy","jateddy");
            Statement stmt=con.createStatement();
            
            int result=stmt.executeUpdate("delete from lightpro where proname="+pname+"");
            
            if(result>0)
                
            {%>
               <%="<h1>one record deleted</h1>"%> 
            <%}%>
            <table border="2">
                <tr><th>Product Name</th></tr>
                <tr>
                    <td><%=pname%></td>
                </tr>
            </table>
    </body>
</html>
