<%@page import="com.crudjspjava.bean.Usuario"%>
<%@page import="com.crudjspjava.dao.UsuarioDAO"%>
<jsp:useBean id="u" class="com.crudjspjava.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"></jsp:setProperty>
<%
	UsuarioDAO.deleteUsuario(u);
	response.sendRedirect("viewusuarios.jsp");

%>