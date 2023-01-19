<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar</title>
</head>
<body>
	<%@page import="com.crudjspjava.bean.*, com.crudjspjava.dao.*"%>
	<%
	String id = request.getParameter("id");
	Usuario usuario = UsuarioDAO.getFindById(Integer.parseInt(id));
	%>
	<form action="editusuario.jsp" method="post">
		<input type="hidden" name="id" value="<%=usuario.getId()%>">
		<table>
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome"
					value="<%=usuario.getNome()%>"></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email"
					value="<%=usuario.getEmail()%>"></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="password" name="password"
					value="<%=usuario.getPassword()%>"></td>
			</tr>
			<tr>
				<td>Pais:</td>
				<td><input type="text" name="pais"
					value="<%=usuario.getPais()%>"></td>
			</tr>
			<tr>
				<td>Sexo:</td>
				<td><input type="text" name="sexo"
					value="<%=usuario.getSexo()%>"></td>
			</tr>
			<tr>
				<td><input type="submit" value="editar"></input></td>
			</tr>
		</table>
	</form>
</body>
</html>