<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="fj.vagas.Vagas" %>
<%@ page import="java.text.DecimalFormat" %>

<%
//Capturar objetos do formulario
// linca variavel a nome do campo no formulario 
//Converter string para int - aplicado em  ID Vaga
Integer id = Integer.parseInt(request.getParameter ("idvaga"));

String desc = request.getParameter("descricao");
String reqo = request.getParameter("req_obriga");
String reqd = request.getParameter("req_desejo");

// Converter string para float - aplicado em  salario
DecimalFormat df = new DecimalFormat ("#,##0.00");
Float sal = Float.parseFloat(request.getParameter("salario"));

String benf = request.getParameter("beneficios");
String ltrab = request.getParameter("local_trab");

// instanciar classe Vagas
Vagas vg = new Vagas();

//Transferência dos conteúdos tratados dos formulários
// para os atributos do objeto "vg"
vg.setIdvaga_cc(id);
vg.setDescricao_cc(desc);
vg.setReq_obrigatorios_cc(reqo);
vg.setReq_desejaveis_cc(reqd);
vg.setRemuneracao_cc(sal);
vg.setBeneficios_cc(benf);
vg.setLocal_trabalho_cc(ltrab);
vg.setAberta_cc(1);

// alterar dados  no banco de dados
vg.Alterar();
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
	
		<caption>Vaga Alterada</caption>
		<caption>-------------</caption>
		
		<tr> 
			<td>Descrição : </td>
			<td> <%=desc%></td>
		</tr>	
			
		<tr> 
			<td>Requisitos Obrigatórios : </td>
			<td> <%=reqo%></td>
		</tr>	
				
		<tr> 
			<td>Requisitos Desejáveis : </td>
			<td> <%=reqd%></td>
		</tr>	
			
		<tr> 
			<td>Salário : </td>
			<td> <%=df.format(sal)%></td>
		</tr>	
		
		<tr> 
			<td>Benefícios : </td>
			<td> <%=benf%></td>
		</tr>	

		<tr> 
			<td>Local de Trabalho : </td>
			<td> <%=ltrab%></td>
		</tr>	
		
		<tr><th colspan=2 style="color:red">Vaga alterada com sucesso.</th></tr>
		
		<tr>
			<th colspan=2> <button type ="submit">Voltar</button> </th>
		</tr>	

	</table>
	</form>

</body>
</html>