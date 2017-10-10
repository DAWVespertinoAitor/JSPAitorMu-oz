<%-- 
    Document   : nueva
    Created on : 06-oct-2017, 16:49:43
    Author     : Daw2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2><%=request.getContextPath()%></h2>
        <% 
            int op1 = 35;
            int op2 = 17;
            int resultado = op1 * op2;
        %>
        <p>El resultado de multiplicar <%=op1%> por <%=op2%> es igual a <%=resultado%></p>
    </body>
</html>
