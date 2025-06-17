<%-- 
    Document   : alogin
    Created on : 16 Feb, 2025, 8:33:47 PM
    Author     : ASUS
--%>

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
        
        String un="abrar";
        String ps="abrar@123";
        
        if(uname.equals(un) && pass.equals(ps))
        {
            response.sendRedirect("admin.html");
        }
        %>
    </body>
</html>
