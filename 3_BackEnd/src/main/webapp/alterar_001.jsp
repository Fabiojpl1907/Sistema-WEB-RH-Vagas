<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Vagas</title>
</head>
<body>

	<div>Gerenciamento de Vagas - Alterar</div>
	<div>----------------------------------------------------------------</div>
	<form action ="alterar_002.jsp" method ="post">
	
		<table>
			<tr> 
				<td>ID Vaga : </td>
				<td> <input type="text" name="idvaga" required></td>
			</tr>	

			<tr> 
				<td>Descrição : </td>
				<td> <input type="text" name="descricao" maxlength="45" required></td>
			</tr>	
			
			<tr> 
				<td>Requisitos Obrigatórios : </td>
				<td> <input type="text" name="req_obriga" maxlength="45" required ></td>
			</tr>			
	
			<tr> 
				<td>Requisitos Desejaveis : </td>
				<td> <input type="text" name="req_desejo" maxlength="45" required ></td>
			</tr>		
			
			<tr> 
				<td>Salário : </td>
				<td> <input type="text" name="salario" required ></td>
			</tr>		
			
			<tr> 
				<td>Benefícios : </td>
				<td> <input type="text" name="beneficios" maxlength="45" required ></td>
			</tr>		
			
			<tr> 
				<td>Local de Trabalho : </td>
				<td> <input type="text" name="local_trab" maxlength="45" required ></td>
			</tr>		

			<tr>
				<th colspan=2> <input type ="submit" name="env" value="Alterar"> </th>
			</tr>
					
		</table>
		
	</form>
	
</body>
</html>