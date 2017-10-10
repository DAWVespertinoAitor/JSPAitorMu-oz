<%-- 
    Document   : contador
    Created on : 09-oct-2017, 20:44:46
    Author     : Daw2
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
            String valor = null;
            int cont =0;//Contador
            
            Cookie[] cookie = request.getCookies();
            if(cookie!=null){
                for(int i=0;i<cookie.length;i++){
                    if((cookie[i].getName()).equals("contador")){
                        valor = cookie[i].getValue();
                        break;
                    }
                }
            }
            
            if(valor != null){
                cont = Integer.parseInt(valor);
                cont++;
            } else if(request.getParameter("eliminar") != null){
                cont = 0;
            }
            
            Cookie cookieC = new Cookie("contador", Integer.toString(cont));
            response.addCookie(cookieC);
        %>
        <h2>Has visitado la página <%=cont%></h2>
        <% 
            if(valor.equals("1")){
        %>        
                <h2>Has visitado la página <%=cont%></h2>
                <p>La fecha de caducidad es de <%=cookieC.setMaxAge(60*60*24*365)%></p>
        <%        
            }
        %>
    </body>
</html>
