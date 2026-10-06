<%@page import="Dominio.Seguro"%>
<%@page import="Dominio.TipoSeguro"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listar seguros</title>
<style>
    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
    th, td { border: 1px solid black; padding: 8px; text-align: left; }
    .container { border: 1px solid #6aa0d8; width: 800px; padding: 10px; }
    .nav-item {margin-right: 10px}
</style>
</head>
<body>
<div class="container">
    <div>
        <a class="nav-item" href="Inicio.jsp">Inicio</a>
        <a class="nav-item" href="ServletSeguro">Agregar Seguros</a>
        <a class="nav-item" href="ServletSeguro?accion=listar">Listar Seguros</a>
    </div>

	<h2>Listar seguros</h2>

	<br>
	
	<%
    	ArrayList<TipoSeguro> tipos = (ArrayList<TipoSeguro>) request.getAttribute("tipos");
    	String idTipoSeleccionado = (String) request.getAttribute("idTipoSeleccionado");
	%>
	
	<form action="ServletSeguro" method="get">
	    Busqueda por tipo de seguros:
	
		<input type="hidden" name="accion" value="listar">
	    <select name="idTipo">
		    <option value="">Todos</option>
		    <% if (tipos != null) {
		           for (TipoSeguro t : tipos) {
		               String sel = (idTipoSeleccionado != null && idTipoSeleccionado.equals(String.valueOf(t.getIdTipo()))) ? "selected" : "";
		    %>
		        <option value="<%= t.getIdTipo() %>" <%= sel %>><%= t.getDescripcion() %></option>
		    <%     }
		       } %>
		</select>
	
	    <input type="submit" value="Filtrar">
	</form>
	
	<%
    	ArrayList<Seguro> listaSeguros = (ArrayList<Seguro>) request.getAttribute("listaSeguros");
	%>
	
	
    <table>
        <thead>
            <tr>
                <th>ID Seguro</th>
                <th>Descripción Seguro</th>
                <th>Descripción Tipo Seguro</th>
                <th>Costo Contratación</th>
                <th>Costo Máximo Asegurado</th>
            </tr>
        </thead>
        
        <tbody>
		    <%
		    if (listaSeguros != null) {
		        for (Seguro s : listaSeguros) { 
		    %>
		        <tr>
		            <td><%= s.getIdSeguro() %></td>
		            <td><%= s.getDescripcion() %></td>
		            <td><%= s.getDescripcionTipo() %></td>
		            <td><%= s.getCostoContratacion() %></td>
		            <td><%= s.getCostoAsegurado() %></td>
		        </tr>
		    <%  
		        } 
		    } else { 
		    %>
		        <tr>
		            <td colspan="5">No hay seguros registrados o no se cargó la lista.</td>
		        </tr>
		    <% } %>
		</tbody>		
        
    </table>
</div>
</body>
</html>