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
        <a class="nav-item" href="ListarSeguros.jsp">Listar Seguros</a>
    </div>

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
            <tr>
                <td>1</td>
                <td>Es un seguro de salud para intervenciones quirúrgicas de alta complejidad, a un costo accesible.</td>
                <td>Seguro de casas</td>
                <td>600.0</td>
                <td>15000.0</td>
            </tr>
        </tbody>
    </table>
</div>
</body>
</html>