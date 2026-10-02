<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar usuario</title>
<style>
    .nav-item {margin-right: 10px}
</style>
</head>
<body>
<div style="border: 1px solid #6aa0d8; width: 500px; padding: 10px;">

    <div>
        <a class="nav-item" href="Inicio.jsp">Inicio</a>
        <a class="nav-item" href="AgregarSeguro.jsp">Agregar Seguros</a>
        <a class="nav-item" href="ListarSeguros.jsp">Listar Seguros</a>
    </div>

    <h1>Agregar Seguros</h1>

    <form action="SeguroServlet" method="post">

        <table>
			<!--
            <tr>
                <td>Id Seguro:</td>
                <td>
                    <input type="text" name="idSeguro">
                </td>
            </tr>
			-->
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
                        <option value="1">Seguro de casas</option>
                        <option value="2">Seguro de vida</option>
                        <option value="3">Seguro de motos</option>
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
                    <input type="submit" value="Aceptar">
                </td>
            </tr>

        </table>

    </form>

</div>

</body>
</html>