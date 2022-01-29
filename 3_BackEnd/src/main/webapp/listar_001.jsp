<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Vagas</title>
</head>
<body>

	<div>Gerenciamento de Vagas - Listar</div>
	<div>--------------------------------------</div>
	<form action ="listar_002.jsp" method ="post">
	
		<div>Qual Listagem voce quer ?</div>
		 <br />
		<div>1- Vagas em Aberto</div>
		<div>2-Vagas Fechadas</div>
		<div>3-Todas as Vagas</div>
		
		<table>
			<tr> 
				<td>Sua opção :  </td>
				<td> <input type="text" name="lista" min="1" max="3" required></td>
			</tr>
			
			<tr>
				<th colspan=2></th>
			</tr>
		
			<tr>
				<th colspan=2> <input type ="submit" name="env" value="Listar"> </th>
			</tr>
					
		</table>
		
	</form>
	
</body>
</html>