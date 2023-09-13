<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.clases.Producto"%>
<%@page import="com.emergentes.clases.Producto"%>
<%
    if(session.getAttribute("listapro")==null){
        ArrayList<Producto> list = new ArrayList<Producto>();
        session.setAttribute("listapro", list);
    }
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <table border="1" align="center">
            <tr>
                <th>
                    <h1>SEGUNDO PARCIAL TEM-742</h1>
                    <h2>Nombre: Maria Fernanda Gandarillas Magne</h2>
                    <h2>Carnet: 12540596</h2>
                </th>
            </tr>
        </table>
        <h1>Gestion de productos Productos</h1>
        <a href="MainServlet?op=nuevo">NUEVO PRODUCTO</a>
        <center><table border="1" cellspacing="1">
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if(lista != null){
                    for(Producto item : lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href="MainServlet?op=editar&id=<%= item.getId()%>">Editar</a></td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a>
                </td>
            </tr>
            <%
                    }
                }
            %>
        </table></center>
    </body>
</html>
