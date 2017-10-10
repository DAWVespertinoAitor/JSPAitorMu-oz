<%-- 
    Document   : contadorSesion
    Created on : 10-oct-2017, 12:16:32
    Author     : aitor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            HttpSession sesion = request.getSession(true);
            Integer cont = (Integer)sesion.getValue("contadorAcceso");
            String titular;
            if(cont!=null){
                titular = "Hola otra vez";
            } else {
                titular = "Un nuevo visitante";
            }
            
            int valor;
            if(cont!=null){
                valor = cont.intValue()+1;
            } else {
                valor = 0;
            }
            
            sesion.putValue("contadorAcceso", new Integer(valor));
        %>
        
        <h1><$=titular%></h1>    
        
        <p>Número de acceso previos <%=valor%></p>
        <form action="contadorSesion.jsp" method="post">
            <input type="button" name="actualizar" value="Recargar" onclick="document.location.reload()">
            <input type="button" name="eliminar" value="Eliminar">
        </form>
        <%
            String eliminar = request.getParameter("eliminar");
            if(eliminar !=null){
                valor = 0;
            }
        %>
    </body>
</html>
