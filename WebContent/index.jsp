<%@page import="br.com.projfront.Mensagem"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chat</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<body>
	<div style="padding-top: 5%"></div>
	<div class="container">
		<div class="row">
			<div class="col-sm">
			
				<label for="nome" class="form-label">Nome</label> 				
				<input type="text"class="form-control" id="nome" name="nome"> 				
				<label for="mensagem" class="form-label">Mensagem</label> 					
				<input type="text" class="form-control" id="mensagem" name="mensagem"> 				
				<label for="conteudo" class="form-label">Conteúdo</label>				
				<textarea class="form-control" id="conteudo" name="conteudo" rows="10">
						<% for (Mensagem m : Mensagem.getAll()){%>
						<%=m.getNome()%> : <%=m.getMensagem()%>
						<%}%>
				</textarea>
				<br>
				<button class="btn btn-primary" onclick="mostrarDados()">Enviar</button>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>