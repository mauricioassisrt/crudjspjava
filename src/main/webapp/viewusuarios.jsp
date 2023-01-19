<html>
<head>
<meta charset="ISO-8859-1">
<title>Listagem de usuários</title>
</head>
<body>
	<%@ page
		import="com.crudjspjava.dao.UsuarioDAO, com.crudjspjava.bean.*, java.util.*"%>
	<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	List<Usuario> list = UsuarioDAO.getAllUsuarios();
	request.setAttribute("list", list);
	%>
	<table border="1">
		<tr>
			<th>id</th>
			<th>Nome</th>
			<th>email</th>
			<th>Senha</th>
			<th>Sexo</th>
			<th>Pais</th>
			<th>Editar</th>
			<th>Excluir</th>
		</tr>
		<c:forEach items="${list}" var="usuario">
			<tr>
				<td>${usuario.getId() }</td>
				<td>${usuario.getNome() }</td>
				<td>${usuario.getEmail() }</td>
				<td>${usuario.getPassword() }</td>
				<td>${usuario.getSexo() }</td>
				<td>${usuario.getPais() }</td>
				<td><a href="editform.jsp?id=${usuario.getId()}"> Editar</a></td>
				<td><a href="#">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="addusuarioform.jsp">Add </a>
</body>
</html>