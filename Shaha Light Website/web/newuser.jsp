<%-- 
    Document   : newuser
    Created on : 20 Feb, 2025, 1:40:40 PM
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
            
            String fname=request.getParameter("n1");
            String sname=request.getParameter("n2");
            String lname=request.getParameter("n3");
            String address=request.getParameter("n4");
            String dobirth=request.getParameter("n5");
            int dob=Integer.parseInt(dobirth);
            String mobile=request.getParameter("n6");
            long mob=Long.parseLong(mobile);
            String userid=request.getParameter("n7");
            String pass=request.getParameter("n8");
            String ctype=request.getParameter("n9");
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","merateddy","jateddy");
            Statement stmt=con.createStatement();
            
            int result=stmt.executeUpdate("insert into cuslog values('"+fname+"','"+sname+"','"+lname+"','"+address+"',"+dob+","+mob+",'"+userid+"','"+pass+"','"+ctype+"')");
            
            if(result>0)
                
            {%>
               <%="<h1>one Product Added</h1>"%> 
            <%}%>
            <table border="2">
                <tr><th>First Name</th><th>Second Name</th><th>Last Name</th><th>Address</th><th>Date Of Birth</th><th>Mobile Num</th><th>Username </th><th>Password</th><th>Customer Type</th></tr>
                <tr><td><%=fname%></td>
                    <td><%=sname%></td>
                    <td><%=lname%></td>
                    <td><%=address%></td>
                    <td><%=dob%></td>
                    <td><%=mob%></td>
                    <td><%=userid%></td>
                    <td><%=pass%></td>
                    <td><%=ctype%></td></tr>
            </table>
    </body>
</html>
