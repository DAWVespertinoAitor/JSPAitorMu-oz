<%-- 
    Document   : HolaMundo
    Created on : 09-oct-2017, 14:19:17
    Author     : aitor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scriptlets en páginas JSP</title>
    </head>
    <body>
        <%
            java.util.Calendar ahora = java.util.Calendar.getInstance();
            int hora = ahora.get(java.util.Calendar.HOUR_OF_DAY);
        %>
        <H1>
            <center>    
                <b>Hola mundo,
                    <i>
                        <% if ((hora > 20) || (hora < 6)) {%>
                        buenas noches.
                        <% } else if ((hora >= 6) && (hora <= 12)) {%>
                        buenos días.
                        <% } else {%>
                        buenas tardes.
                        <% };%>
                    </i>
                </b>
                <HR> 
            </center>    
        </H1>
    </body>
</html>
