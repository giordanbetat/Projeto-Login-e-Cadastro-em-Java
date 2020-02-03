<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Produto</title>
<link rel="stylesheet" href="resources/css/cadastro.css">
<link rel="stylesheet" href="resources/css/tabela.css">
</head>
<body>

	<center>
		<h1>Cadastro de Produto</h1>
		<h3 style="color: red;">${msg}</h3>
	</center>
	<center>
		<form action="salvarProduto" method="post" id="formProduto">
			<ul class="form-style-1">
				<li>
					<table>

						<tr>
							<td>Código:</td>
							<td><input type="text" readonly="readonly" id="id" name="id"
								value="${produto.id}" class="field-long"></td>
						</tr>

						<tr>
							<td>Nome:</td>
							<td><input type="text" id="nome" name="nome"
								value="${produto.nome}" class="field-long"></td>
						</tr>

						<tr>
							<td>Quantidade:</td>
							<td><input type="text" id="quantidade" name="quantidade"
								value="${produto.quantidade}" class="field-long"></td>
						</tr>
						<tr>
							<td>Valor:</td>
							<td><input type="text" id="valor" name="valor"
								value="${produto.valor}" class="field-long"></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Cadastrar"> <input
								type="submit" value="Cancelar"
								onclick="document.getElementById('formProduto').action = 'salvarProduto?acao=reset'">
							</td>
						</tr>
					</table>
				</li>
			</ul>
		</form>
		<center>
			<h2>Produtos Cadastrados</h2>
			<table class="table-style-three">
				<thead>
					<tr>
						<th>Código</th>
						<th>Nome</th>
						<th>Quantidade</th>
						<th>Valor</th>
					</tr>
				<thead>
				<tbody>
					<c:forEach items="${produtos}" var="produto">
						<tr>
							<td style="width: 200px"><c:out value="${produto.id}"></c:out></td>
							<td style="width: 200px"><c:out value="${produto.nome}"></c:out></td>
							<td style="width: 200px"><c:out value="${produto.quantidade}"></c:out></td>
							<td style="width: 200px"><c:out value="${produto.valor}"></c:out></td>

							<td style="width: 200px"><a
								href="salvarProduto?acao=delete&produto=${produto.id}"><img
									src="resources/img/excluir.png" alt="excluir" title="Excluir"
									width="20px" heigth="20px"></a></td>
							<td style="width: 200px"><a
								href="salvarProduto?acao=editar&produto=${produto.id}"><img
									src="resources/img/editar.png" alt="editar" title="Editar"
									width="20px" heigth="20px"></a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
</body>
</html>