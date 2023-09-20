<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          if(session.getAttribute("listaper")==null){
              ArrayList<Persona> lista = new ArrayList<Persona>();
              //Agregamos lista coleccion
              lista.add(new Persona(1,"Freddy Condori","72012345","Freddy@gmail.com"));
              lista.add(new Persona(2,"German Martines","72012346","German@gmail.com"));
              lista.add(new Persona(3,"Noel Choque","72012245","Noe@gmail.com"));
              //Colocamos la lsita como un atributo de session
              session.setAttribute("listaper", lista);
              
          }
        %>
        
        
        <h1>Ejemplos de JSTL core!</h1>
        <ul>
            <li><a href="jstl.if.jsp">Ejemplo del if </a></li>
            <li><a href="jstl.choose.jsp">Probando el choose </a></li>
            <li><a href="jstl.foreach.jsp">Recorriendo la coleccion con forEach</a></li>
        </ul>

        
    </body>
</html>
