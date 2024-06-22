<%@page import="model.TblCliente"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Clientes</title>
<h2 align="center">
<a href="FormRegistrarCliente.jsp" style="color: blue">Registrar Cliente</a>
</h2>
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

	<%
		List<TblCliente> listadocliente = (List<TblCliente>)request.getAttribute("listadoclientes");
		
		if(listadocliente != null){
			for(TblCliente cl : listadocliente){
			%>
				<tr>
					<td><%=cl.getNombre() %></td>
					<td><%=cl.getApellido() %></td>
					<td><%=cl.getDni() %></td>
					<td><%=cl.getEmail() %></td>
					<td><%=cl.getTelf()%></td>
					<td><%=cl.getSexo() %></td>
					<td><%=cl.getNacionalidad() %></td>
				</tr>
			<%	
			}
		}
	%>
		</table>
</body>
</html>