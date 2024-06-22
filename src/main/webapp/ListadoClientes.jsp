<%@page import="model.TblCliente"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Clientes</title>
</head>
<body bgcolor="#c5dec9">
	<h1 align="center">Listado de Clientes Registrado en BD</h1>
	<table border="2" align="center">
		<tr>
			<td>Nombre</td>
			<td>Apellido</td>
			<td>Dni</td>
			<td>Email</td>
			<td>Telf</td>
			<td>Sexo</td>
			<td>Nacionalidad</td>
		</tr>
            <c:choose>
                <c:when test="${empty listadocliente}">
                    <tr>
                        <td colspan="7" align="center">No hay clientes registrados.</td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <c:forEach var="cliente" items="${listadocliente}">
                        <tr>
                            <td><c:out value="${cliente.nombre}" /></td>
                            <td><c:out value="${cliente.apellido}" /></td>
                            <td><c:out value="${cliente.dni}" /></td>
                            <td><c:out value="${cliente.email}" /></td>
                            <td><c:out value="${cliente.telf}" /></td>
                            <td><c:out value="${cliente.sexo}" /></td>
                            <td><c:out value="${cliente.nacionalidad}" /></td>
                        </tr>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
	</table>
</body>
</html>