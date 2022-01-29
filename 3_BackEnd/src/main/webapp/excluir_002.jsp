<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="fj.vagas.Vagas" %>
<%@ page import="java.text.DecimalFormat" %>

<%
//Capturar objetos do formulario
// linca variavel a nome do campo no formulario 
//Converter string para int - aplicado em  ID Vaga
Integer id = Integer.parseInt(request.getParameter ("idvaga"));


// instanciar classe Vagas
Vagas vg = new Vagas();

//Transferência dos conteúdos tratados dos formulários
// para os atributos do objeto "vg"
vg.setIdvaga_cc(id);

// alterar dados  no banco de dados
vg.Excluir();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vaga Aberta</title>
</head>
<body>

	<form action="index.jsp" method="post">
	<table>
	
		<caption>Vaga Excluida</caption>
		<caption>-------------</caption>
		
		<tr> 
			<td>Id Vaga : </td>
			<td> <%=id%></td>
		</tr>	
			
			
		<tr><th colspan=2 style="color:red">Vaga excluida com sucesso</th></tr>
			
		<tr>
			<th colspan=2> <button type ="submit">Voltar</button> </th>
		</tr>	

	</table>
	</form>

</body>
</html>