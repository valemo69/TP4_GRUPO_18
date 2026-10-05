<%@page import="Dominio.Seguro"%>
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
        <a class="nav-item" href="AgregarSeguro.jsp">Agregar Seguros</a>
        <a class="nav-item" href="ServletSeguro?accion=listar">Listar Seguros</a>
    </div>

	<h2>Tipo de seguros en la base de datos</h2>

	<br>
	
	<form action="ServletSeguro" method="get">
	    Busqueda por tipo de seguros:
	
	    <select name="idTipo">
	        <option value="1">Seguro de casas</option>
	        <option value="2">Seguro de vida</option>
	        <option value="3">Seguro de motos</option>
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