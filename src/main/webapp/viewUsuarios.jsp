
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Visualização de Usuarios</title>
</head>
<body>
	<%@ page import="com.crudjspjava.DAO.UsuarioDAO, com.crudjspjava.model.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<h1>Listagem de Usuarios</h1>
	
	<%
	List<Usuario> list = UsuarioDAO.getAllUsuarios();
	request.setAttribute("list", list);
	%>
	
	<table>
		<tr>
			<th>ID<th>
			<th>Nome</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sexo</th>
			<th>Pais</th>
		</tr>
		<c:forEach items="${list}" var="usuario">
			<tr>
		</c:forEach>
	</table>
</body>
</html>