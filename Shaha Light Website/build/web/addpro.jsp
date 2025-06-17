<%-- 
    Document   : addpro
    Created on : 16 Feb, 2025, 9:19:12 PM
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
            String prodid=request.getParameter("prodpid");
            String proname=request.getParameter("n1");
            String modelname=request.getParameter("n2");
            String descri=request.getParameter("n3");
            String company=request.getParameter("n4");
            String type=request.getParameter("n5");
            String supname=request.getParameter("n6");
            String supmobno=request.getParameter("n7");
            long smob=Long.parseLong(supmobno);
            String supadd=request.getParameter("n8");
            String quantity=request.getParameter("n9");
            int q=Integer.parseInt(quantity);
            String sellprice=request.getParameter("n10");
            int sp=Integer.parseInt(sellprice);
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","merateddy","jateddy");
            Statement stmt=con.createStatement();
            
            int result=stmt.executeUpdate("insert into lightpro values(prodid.nextval,'"+proname+"','"+modelname+"','"+descri+"','"+company+"','"+type+"','"+supname+"',"+smob+",'"+supadd+"',"+q+","+sp+")");
            
            if(result>0)
                
            {%>
               <%="<h1>one Product Added</h1>"%> 
            <%}%>
            <table border="2">
                <tr><th>Product Id</th><th>Product Name</th><th>Model Name </th><th>Description</th><th>Conpany</th><th>Type</th><th>Supplier Name</th><th>Supplier Mobile No</th><th>Supplier Address</th><th>Quantity</th><th>Seeling Price</th></tr>
                <tr><td><%=prodid%></td>
                    <td><%=proname%></td>
                    <td><%=modelname %></td>
                    <td><%=descri%></td>
                    <td><%=company%></td>
                    <td><%=type%></td>
                    <td><%=supname%></td>
                    <td><%=smob%></td>
                    <td><%=supadd%></td>
                    <td><%=q%></td>
                    <td><%=sp%></td>
            </table>
    </body>
</html>
