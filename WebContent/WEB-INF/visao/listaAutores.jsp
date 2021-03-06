<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.edu.ifpb.dac.livraria.modelo.Autor"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livraria MVC</title>
</head>
<body>
	<a href="/livrariaMVC/controlador?comando=NovoAutor">novo Autor</a>
	<p></p>
	Lista de autores: <br />
	
	<ul>
		<c:forEach items="${autores}" var="autor">
			
			<li>
				${autor.nome}
				<a href="/livrariaMVC/controlador?comando=MostraEditaAutor&id=${autor.id }">edita</a>
				<a href="/livrariaMVC/controlador?comando=RemoveAutor&id=${autor.id }">remove</a>
			</li>
		</c:forEach>
	</ul>
	
	
</body>
</html>



