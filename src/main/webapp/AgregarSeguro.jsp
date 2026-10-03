<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, Dominio.TipoSeguro" %>
<%
    ArrayList<TipoSeguro> tipos = (ArrayList<TipoSeguro>) request.getAttribute("tipos");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Seguros</title>
<style>
    .nav-item {margin-right: 10px}
</style>
</head>
<body>
<div style="border: 1px solid #6aa0d8; width: 500px; padding: 10px;">

    <div>
        <a class="nav-item" href="Inicio.jsp">Inicio</a>
        <a class="nav-item" href="ServletSeguro">Agregar Seguros</a>
        <a class="nav-item" href="ListarSeguros.jsp">Listar Seguros</a>
    </div>

    <h1>Agregar Seguros</h1>

    <form action="ServletSeguro" method="post">

        <table>
            

            <tr>
                <td>Descripción:</td>
                <td>
                    <input type="text" name="descripcion">
                </td>
            </tr>

            <tr>
                <td>Tipo de Seguro:</td>
                <td>
                    <select name="idTipo">
                        <% if (tipos != null) {
                               for (TipoSeguro t : tipos) { %>
                            <option value="<%= t.getIdTipo() %>"><%= t.getDescripcion() %></option>
                        <%     }
                           } %>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Costo contratación:</td>
                <td>
                    <input type="text" name="costoContratacion">
                </td>
            </tr>

            <tr>
                <td>Costo Máximo Asegurado:</td>
                <td>
                    <input type="text" name="costoAsegurado">
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <input type="submit" name="btnAceptar" value="Aceptar">
                </td>
            </tr>

        </table>

    </form>

</div>

</body>
</html>