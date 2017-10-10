<%-- 
    Document   : BuenasTardes
    Created on : 06-oct-2017, 17:03:34
    Author     : Daw2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<%! public int sumar(int num1, int num2){
        int resultado = 0;
        if(num1 > num2){
            resultado = num1 + num2;
        } else {
            resultado = num2 + num1;
        }
        return resultado;    
        }%>
<%! public int restar(int num1, int num2){
        int resultado = 0;
        if(num1 > num2){
            resultado = num1 - num2;
        } else {
            resultado = num2 - num1;
        }
        return resultado;    
        }%>
<%! public int multiplicar(int num1, int num2){
        int resultado = 0;
        if(num1 > num2){
            resultado = num1 * num2;
        } else {
            resultado = num2 * num1;
        }    
        return resultado;    
        }%>
<%! public int dividir(int num1, int num2){
        int resultado = 0;
        if(num1 > num2){
            resultado = num1 / num2;
        } else {
            resultado = num2 / num1;
        }   
        return resultado;    
        }%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="align-content: center;">
        
        <form method="POST" action="/JSP/calculadora.jsp">
            <label for="primer">Primer operando: </label>
            <input type="text" name="primer" size="30">
            <label for="segundo">Segundo operando: </label>
            <input type="text" name="segundo" size="30">
            <input type="button" name="sumar" value="sumar">Sumar
            <input type="button" name="restar" value="restar">Restar
            <input type="button" name="multiplicar" value="multiplicar">Multiplicar
            <input type="button" name="dividir" value="dividir">Dividir<br><br>
            <input type="submit" value="Enviar">
        </form>
        <% Enumeration nomParam = request.getParameterNames();
           int num1 = Integer.parseInt(request.getParameter("primero"));
           int num2 = Integer.parseInt(request.getParameter("segundo"));%>
        <% while(nomParam.hasMoreElements()){
           String nombrePara = (String)nomParam.nextElement();
           switch(nombrePara){
               case "sumar":
                   sumar(num1, num2);
                   break;
               case "restar":
                   restar(num1, num2);
                   break;
               case "multiplicar":
                   multiplicar(num1, num2);
                   break;
               case "dividir":
                   dividir(num1, num2);
                   break;
           }
        }%>
    </body>
</html>