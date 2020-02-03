
<jsp:useBean id="calcula" class="beans.BeanCursoJsp"
	type="beans.BeanCursoJsp" scope="page"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:setProperty property="*" name="calcula"/>
	<h3>Seja bem vindo</h3>
	
<a href="salvarUsuario?acao=listartodos"><img src="resources/img/adicionar.png" alt="Adicionar Usuário" title="Adicionar Usuário" width="40px" heigth="40px"></a>
<a href="salvarProduto?acao=listartodos"><img src="resources/img/addproduto.png" alt="Cadastro de Produto" title="Cadastro de Produto" width="40px" heigth="40px"></a>
	
	
</body>
</html>
