<%-- 
    Document   : uppro
    Created on : 17 Feb, 2025, 4:54:40 PM
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
            
            String quantity=request.getParameter("n2");
            int q=Integer.parseInt(quantity); 
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","merateddy","jateddy");
            Statement stmt=con.createStatement();
            
            int result=stmt.executeUpdate("update lightpro set price="+pname+" where quantity="+q+"");
            
            if(result>0)
                
            {%>
               <%="<h1>one record Added</h1>"%> 
            <%}%>
            <table border="2">
                <tr><th>product Name</th><th>Quantity</th></tr>
                <tr>
                    <td><%=pname%></td>
                    <td><%=q%></td>
                </tr>
            </table>
    </body>
</html>
