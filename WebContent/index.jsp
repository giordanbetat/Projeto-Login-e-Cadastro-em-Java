<jsp:useBean id="calcula" class="beans.BeanCursoJsp"
	type="beans.BeanCursoJsp" scope="page" />


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="myprefix" uri="WEB-INF/testetag.tld"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="resources/css/estilo.css">

</head>
<body>

	<div class="login-page">
		<div class="form">
			<form action="LoginServlet" method="POST" class="login-form">
				Login: <br><input type="text" id="login" name="login">
				<br> Senha: <input type="password" id="senha" name="senha">
				<br> <br> <button type="submit" value="Entrar">ENTRAR</button>
			</form>
		</div>
	</div>

</body>
</html>