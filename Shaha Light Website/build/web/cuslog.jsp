<%-- 
    Document   : cuslog
    Created on : 20 Feb, 2025, 1:29:50 PM
    Author     : ASUS
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String uname=request.getParameter("n1");
            String pass=request.getParameter("n2");
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","merateddy","jateddy");
            Statement stmt=con.createStatement();
            
            ResultSet rs=stmt.executeQuery("select * from cuslog where USERID='"+uname+"' and PASSWO='"+pass+"'");
            
            if(rs.next())
            {
                session.setAttribute("uname",uname);
                response.sendRedirect("addpro.html");
            }
            else
            {
                out.print("Invalid Username And Password");
                out.print("<a href=main.html>Try Again</a>");
            }
        %>
    </body>
</html>
