<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ page import="fj.vagas.Vagas" %>
<%@ page import="java.text.DecimalFormat" %>

<%
//Capturar objetos do formulario
// linca variavel a nome do campo no formulario 

//Converter string para float - aplicado em  ID Vaga
Integer id = Integer.parseInt(request.getParameter ("idvaga"));

String desc = request.getParameter("descricao");
String reqo = request.getParameter("req_obriga");
String reqd = request.getParameter("req_desejo");

// Converter string para float - aplicado em  salario
DecimalFormat df = new DecimalFormat ("#,##0.00");
Float sal = Float.parseFloat(request.getParameter("salario"));

String benf = request.getParameter("beneficios");
String ltrab = request.getParameter("local_trab");
// indicar que vaga esta aberta 
Boolean aberta = true;

// instanciar classe Vagas
Vagas vg = new Vagas();

//Transferência dos conteúdos tratados dos formulários
// para os atributos do objeto "vg"
vg.setIdvaga_cc(id);
vg.setDescricao_cc(desc);
vg.setRq_obrigatórios_cc(reqo);
vg.setReq_desejáveis_cc(reqd);
vg.setRemuneracao_cc(sal);
vg.setBeneficios_cc(benf);
vg.setLocal_trabalho_cc(ltrab);
vg.setAberta_cc(aberta);

// incluir dados  no banco de dados
// vg.Incluir();
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vagas</title>
</head>
<body>
	<table>
	
		<caption>Vaga Registrada</caption>
		<caption>------------------------------------------------</caption>
		
		<tr> 
		  <td>Id Vaga : </td>
		  <td><%=id%></td>
		</tr>
		
		<tr> 
			<td>Descrição : </td>
			<td> <%=desc%></td>
		</tr>	
			
		<tr> 
			<td>Requisitos Obrigatórios : </td>
			<td> <%=reqo%></td>
		</tr>	
				
		<tr> 
			<td>Requisitos Desejaveis : </td>
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
		<tr> 
			<td>Status : </td>
			<td>Aberta</td>
		</tr>	

	</table>
</body>
</html>