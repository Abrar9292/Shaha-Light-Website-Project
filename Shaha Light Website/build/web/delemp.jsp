<%-- 
    Document   : delemp
    Created on : 18 Feb, 2025, 6:21:47 PM
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
            String employeid=request.getParameter("n1");
            int eid=Integer.parseInt(employeid);
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","merateddy","jateddy");
            Statement stmt=con.createStatement();
            
            int result=stmt.executeUpdate("delete from emppr where empid="+eid+"");
            
            if(result>0)
                
            {%>
               <%="<h1>one record deleted</h1>"%> 
            <%}%>
            <table border="2">
                <tr><th>Employee Id</th></tr>
                <tr>
                    <td><%=eid%></td>
                </tr>
            </table>
    </body>
</html>
