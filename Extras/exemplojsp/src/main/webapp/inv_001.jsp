<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="exemplojsp.Investimento" %>
<%@ page import="java.text.DecimalFormat" %>

<%
DecimalFormat df = new DecimalFormat ("#,##0.00");

Float vi = Float.parseFloat(request.getParameter("valinv"));

Float tx = Float.parseFloat(request.getParameter ("taxa"));

Integer pr = Integer.parseInt(request.getParameter ("periodo"));

Investimento i = new Investimento();

i.valor_investido = vi;
i.taxa =  tx;
i.periodo= pr;
i.CalcularInvestimento();
Double vc = i.valor_calculado;
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
	
		<caption>Resultado da Simulação de Investimento</caption>
		<tr>
			<td>Valor a investir</td>
			<td><%=df.format(vi)%></td>
		</tr>
		
		<tr>
			<td>Taxa</td>
			<td><%=df.format(tx)%></td>
		</tr>
		
		<tr>
			<td>Período</td>
			<td><%=pr%></td>
		</tr>
		
		
		<tr>
			<td>Valor Calculado</td>
			<td><%=df.format(vc)%></td>
		</tr>

	</table>
</body>
</html>