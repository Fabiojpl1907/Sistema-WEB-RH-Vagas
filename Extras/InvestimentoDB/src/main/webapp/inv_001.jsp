
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
    
<%@ page import="fj.classes.Investimento" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<%
DecimalFormat df = new DecimalFormat("#,##0.00");

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

Date ocorr = new Date();

String ocorrx = sdf.format(ocorr);

String vcpf = request.getParameter("cpf");

String vnome = request.getParameter("nome");

Float vi = Float.parseFloat(request.getParameter("valinv"));

Float tx = Float.parseFloat(request.getParameter("taxa"));

Integer pr = Integer.parseInt(request.getParameter("periodo"));

Investimento i = new Investimento();

i.cpf_c = vcpf;
i.nome_c = vnome;
i.valor_investido_c = vi;
i.taxa_c =  tx;
i.periodo_c= pr;
i.ocorrencia_c = ocorrx;
i.CalcularInvestimento();
Double vc = i.valor_calculado_c;
// solicitar a gravação no banco de dados 
i.GravarInvestimento();
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="index.jsp" method="get">
	<table>
	
		<caption>Resultado da Simulação de Investimento</caption>
		<caption>em R$</caption>

		<tr>
			<td>CPF : </td>
			<td><%=vcpf%></td>
		</tr>

		<tr>
			<td>Nome : </td>
			<td><%=vnome%></td>
		</tr>

		<tr>
			<td>Valor investido : </td>
			<td><%=df.format(vi)%></td>
		</tr>
		
		<tr>
			<td>Taxa : </td>
			<td><%=df.format(tx)%></td>
		</tr>
		
		<tr>
			<td>Período : </td>
			<td><%=pr%></td>
		</tr>
		
		
		<tr>
			<td>Valor Calculado : R$ </td>
			<td><%=df.format(vc)%></td>
		</tr>
		
		<tr>
			<td>Ocorrencia : </td>
			<td><%=ocorrx%></td>
		</tr>
	
		<tr>
			<th colspan=2>Dados de investimento gravado com sucesso</th>
		</tr>	
		
		<tr>
			<th colspan=2> <button type ="submit">Voltar</button> </th>
		</tr>
					

	</table>
	</form>
</body>
</html>
