<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Usuário</title>
<link rel="stylesheet" href="resources/css/cadastro.css">
<link rel="stylesheet" href="resources/css/tabela.css">
</head>
<body>

	<center>
		<h1>Cadastro de Usuário</h1>
		<h3 style="color: red">${msg}</h3>
	</center>
	<center>
		<form action="salvarUsuario" method="POST" id="formUser">
			<ul class="form-style-1">
				<li>
					<table>

						<tr>
							<td>Código:</td>
							<td><input type="text" readonly="readonly" id="id" name="id"
								value="${user.id}" class="field-long"></td>
						</tr>

						<tr>
							<td>Login:</td>
							<td><input type="text" id="login" name="login"
								value="${user.login}" class="field-long"></td>
						</tr>

						<tr>
							<td>Nome:</td>
							<td><input type="text" id="nome" name="nome"
								value="${user.nome}" class="field-long"></td>
						</tr>
						<tr>
							<td>Senha:</td>
							<td><input type="password" id="senha" name="senha"
								value="${user.senha}" class="field-long"></td>
						</tr>
						<tr>
							<td>Telefone:</td>
							<td><input type="text" id="telefone" name="telefone"
								value="${user.telefone}" class="field-long"></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Cadastrar"> <input
								type="submit" value="Cancelar"
								onclick="document.getElementById('formUser').action = 'salvarUsuario?acao=reset'">
							</td>
						</tr>
					</table>
				</li>
			</ul>
		</form>
		<center>
			<h2>Usuários Cadastrados</h2>
			<table class="table-style-three">
				<thead>
					<tr>
						<th>Código</th>
						<th>Usuário</th>
						<th>Nome</th>
						<th>Telefone</th>
					</tr>
				<thead>
				<tbody>
					<c:forEach items="${usuarios}" var="user">
						<tr>
							<td style="width: 200px"><c:out value="${user.id}"></c:out></td>
							<td style="width: 200px"><c:out value="${user.login}"></c:out></td>
							<td style="width: 200px"><c:out value="${user.nome}"></c:out></td>
							<td style="width: 200px"><c:out value="${user.telefone}"></c:out></td>

							<td style="width: 200px"><a
								href="salvarUsuario?acao=delete&user=${user.id}"><img
									src="resources/img/excluir.png" alt="Excluir" title="Excluir"
									width="20px" heigth="20px"></a></td>
							<td style="width: 200px"><a
								href="salvarUsuario?acao=editar&user=${user.id}"><img
									src="resources/img/editar.png" alt="Editar" title="Editar"
									width="20px" heigth="20px"></a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
</body>
</html>