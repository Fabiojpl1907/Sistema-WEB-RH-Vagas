<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>Gerenciamento de Vagas - Registrar</div>
	<div>----------------------------------------------------------------</div>
	<form action ="vaga_001.jsp" method ="post">
	
		<table>
			<tr> 
				<td>Id Vaga : </td>
				<td> <input type="text" name="idvaga" required></td>
			</tr>
			
			<tr> 
				<td>Descri��o : </td>
				<td> <input type="text" name="descricao" maxlength="45" required></td>
			</tr>	
			
			<tr> 
				<td>Requisitos Obrigat�rios : </td>
				<td> <input type="text" name="req_obriga" maxlength="45" required ></td>
			</tr>			
	
			<tr> 
				<td>Requisitos Desejaveis : </td>
				<td> <input type="text" name="req_desejo" maxlength="45" required ></td>
			</tr>		
			
			<tr> 
				<td>Sal�rio : </td>
				<td> <input type="text" name="salario" required ></td>
			</tr>		
			
			<tr> 
				<td>Benef�cios : </td>
				<td> <input type="text" name="beneficios" maxlength="45" required ></td>
			</tr>		
			
			<tr> 
				<td>Local de Trabalho : </td>
				<td> <input type="text" name="local_trab" maxlength="45" required ></td>
			</tr>		

			<tr>
				<th colspan=2> <input type ="submit" name="env" value="Enviar"> </th>
			</tr>
					
		</table>
		
	</form>





</body>
</html>