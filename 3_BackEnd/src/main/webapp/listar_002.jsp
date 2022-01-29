<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="fj.vagas.ConectaDB" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	  	int l = Integer.parseInt(request.getParameter("lista"));
		String titulo;
		String query;
			
			if(l == 1)
			{
				query ="select * from vagas where aberta = 1";
				titulo = "Lista de vagas de emprego em aberto";
			}
			else
			{
				if(l == 2)
				{
					query="select * from vagas where aberta = 0"; 
					titulo = "Lista de vagas de emprego encerradas";
				}
				else
				{
					query="select * from vagas";
					titulo = "Lista geral de vagas de emprego";
				}
			}
	%>	
	<form action="index.jsp" method="post">
	
	<table border="2">

		<tr>
			<th colspan=7><%=titulo%></th>
		</tr>
		
		<tr>
		<td style="color:blue">ID Vaga</td>
		<td style="color:blue">Descrição</td>
		<td style="color:blue">Req. Obrigatórios</td>
		<td style="color:blue">Req. Desejados</td>
		<td style="color:blue">Salário</td>
		<td style="color:blue">Beneficios</td>
		<td style="color:blue">Local de Trabalho</td>
		</tr>
		<%
		try
		{
			
			ConectaDB cbd = new ConectaDB();  
			Connection conn = cbd.Conectar();
	
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(query);
	
			DecimalFormat df = new DecimalFormat("#,##0.00");
			
		while(rs.next())
		{	
			%>
			<tr><td><%=rs.getInt("idvaga") %></td>
			<td><%=rs.getString("descricao") %></td>
			<td><%=rs.getString("req_obrigatorios") %></td>
			<td><%=rs.getString("req_desejaveis") %></td>
			<td><%=rs.getFloat("remuneracao") %></td>
			<td><%=rs.getString("beneficios") %></td>
			<td><%=rs.getString("local_trabalho") %></td></tr>
			 <%
		}
		%>
		<tr><th colspan=7 style="color:red">Fim de Relatorio</th></tr>
		<tr><th colspan=7> <button type ="submit">Voltar</button> </th></tr>
	</table>
	<%
	rs.close();
	stmt.close();
	conn.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
	</form>

</body>
</html>