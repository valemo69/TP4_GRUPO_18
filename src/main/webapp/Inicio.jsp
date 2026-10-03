<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio - Seguros Group</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
    }
    .container {
        border: 1px solid #6aa0d8; 
        width: 500px; 
        padding: 15px;
        border-radius: 5px;
    }
    .nav-item {
        margin-right: 10px;
        text-decoration: none;
        color: #0066cc;
    }
    .nav-item:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="container">

    <!-- Menú superior de navegación general -->
    <div>
        <a class="nav-item" href="Inicio.jsp">Inicio</a>
        <a class="nav-item" href="ServletSeguro">Agregar Seguros</a>
        <a class="nav-item" href="ListarSeguros.jsp">Listar Seguros</a>
    </div>

    <hr style="border: 0; border-top: 1px solid #6aa0d8; margin: 15px 0;">

    <!-- Contenido principal requerido -->
    <h1>Inicio</h1>
    <p>Soy la página inicio</p>

</div>

</body>
</html>