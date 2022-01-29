<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Vagas</title>
</head>
<body>

	<div>Gerenciamento de Vagas - Listagem</div>
	<div>----------------------------------------------------------------</div>
	
	<label for="lista">Tipo de ListagemChoose a car:</label>
	
	<select id="lista">
	  <option value="1">Vagas em Aberto</option>
	  <option value="2">Vagas Fechadas</option>
	  <option value="3">Todas as Vagas</option>
	</select>
	
	<form action ="listar_002.jsp" method ="post">
		<table>
			<tr>
				<th colspan=2> <input type ="submit" name="env" value="Listar"> </th>
			</tr>		
		</table>
		
	</form>
	
</body>
</html>