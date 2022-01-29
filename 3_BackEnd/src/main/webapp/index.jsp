<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>Gerenciamento de Vagas - Menu Principal</div>
	<div>---------------------------------------------------</div>
	
	<table>
		<tr>
			<form action ="incluir_001.jsp">
	 			<button type ="submit">Incluir</button>
	 		</form>
		</tr>
		
		<tr>
		
			<form action ="alterar_001.jsp">
 				<button type ="submit">Alterar</button>
 			</form>

		</tr>
		
		<tr>
		 	<form action ="excluir_001.jsp">
 				<button type ="submit">Excluir</button>
 			</form>
		</tr>
		
		<tr>
		 	<form action ="listar_001.jsp">
 				<button type ="submit">Listar</button>
 			</form>
		</tr>
		
	</table>


</body>
</html>