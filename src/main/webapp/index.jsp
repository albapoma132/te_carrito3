<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.pendientes"%>
<%
 if(session.getAttribute("almacen")==null){
    ArrayList<pendientes>lisaux = new ArrayList<pendientes>();
    session.setAttribute("almacen",lisaux);
    }
    ArrayList<pendientes>almacen=(ArrayList<pendientes>)session.getAttribute("almacen");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index2.jsp">Nuevo</a>
        <h2>LISTA DE PEDIDOS</h2>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th>Eliminacion</th>
            </tr>
            <%
                if(almacen!=null){
                    for(pendientes p: almacen){
                %>
             <tr>
                <td><%=p.getId() %></td>
                <td><%=p.getTarea() %></td>
                <td width="50%"> <input type="checkbox" name="copia"></td>      
                <td><a href="MainServlet?op=eliminar&id=<%= p.getId() %>">Eliminar</a></td>
            
            </tr>
             <%
                     }}
                %>
        </table>
    </body>
</html>
