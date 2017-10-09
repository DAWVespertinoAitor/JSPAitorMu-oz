<%-- 
    Document   : CalculadoraBasica
    Created on : 09-oct-2017, 13:33:28
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
        <h1>Calculadora Básica</h1>
        <% 
            int num1 = 0;
            int num2 = 0;
            int resultado = 0;
            
            if(request.getParameter("sumar")!=null){
                num1 = Integer.parseInt(request.getParameter("num1"));
                num2 = Integer.parseInt(request.getParameter("num2"));
                resultado = num1 + num2;
            }
            
            if(request.getParameter("restar")!=null){
                num1 = Integer.parseInt(request.getParameter("num1"));
                num2 = Integer.parseInt(request.getParameter("num2"));
                resultado = num1 - num2;
            }
            
            if(request.getParameter("multi")!=null){
                num1 = Integer.parseInt(request.getParameter("num1"));
                num2 = Integer.parseInt(request.getParameter("num2"));
                resultado = num1 * num2;
            }
            
            if(request.getParameter("dividir")!=null){
                num1 = Integer.parseInt(request.getParameter("num1"));
                num2 = Integer.parseInt(request.getParameter("num2"));
                resultado = num1 / num2;
            }
         
            out.write("<form action=\"CalculadoraBasica.jsp\" method=\"post\">");
            out.write("<label for=\"num1\">Primer Numero</label>");
            out.write("<input type=\"text\" name=\"num1\" id=\"num1\">");
            out.write("<label for=\"num1\">Segundo Numero</label>");
            out.write("<input type=\"text\" name=\"num2\" id=\"num2\">");
            out.write("Suma: <input type=\"text\" name=\"resultados\" value="+resultado+">");
            out.write("Resta: <input type=\"text\" name=\"resultador\" value="+resultado+">");
            out.write("Multiplicacion <input type=\"text\" name=\"resultadom\" value="+resultado+">");
            out.write("Divison: <input type=\"text\" name=\"resultadod\" value="+resultado+">");
            out.write("<input type=\"submit\" name=\"sumar\" value=\"SUMA\">");
            out.write("<input type=\"submit\" name=\"restar\" value=\"RESTA\">");
            out.write("<input type=\"submit\" name=\"multi\" value=\"MULTIPLICACION\">");
            out.write("<input type=\"submit\" name=\"dividir\" value=\"DIVISION\">");
            out.write("</form>");
            
        %>
        
        
            
            
            
        
    </body>
</html>
