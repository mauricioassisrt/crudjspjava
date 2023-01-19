<html>
<head>
<meta charset="ISO-8859-1">
<title>Listagem de usu�rios</title>
</head>
<body>
	<%@ page
		import="com.crudjspjava.dao.UsuarioDAO, com.crudjspjava.bean.*, java.util.*"%>
	<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	String pageid = request.getParameter("page");
	int id = Integer.parseInt(pageid);
	int total = 5;
	if (id == 1) {

	} else {
		id = id - 1;
		id = id * total + 1;
	}
	List<Usuario> list = UsuarioDAO.getRecords(id, total);
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
				<td><a href="deleteusuario.jsp?id=${usuario.getId()}">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="viewusuarios.jsp?page=1">1</a>
	<a href="addusuarioform.jsp">Add </a>
</body>
</html>