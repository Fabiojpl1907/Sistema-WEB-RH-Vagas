<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="index.jsp" method="post">
	
	<table border="2">
		<tr>
			<th colspan=7>Relatório de Vagas em Aberto</th>
		</tr>
		<tr>
		<td>ID Vaga</td>
		<td>Descrição</td>
		<td>Req. Obrigatoriosd</td>
		<td>Req. Desejados</td>
		<td>Salario</td>
		<td>Beneficios</td>
		<td>Local de Trabalho</td>
		</tr>
		<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/empregos";
			String username="root";
			String password="MySQL2@22";
			String query="select * from vagas where aberta = 1";
			
			Connection conn=DriverManager.getConnection(url, username, password);
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			
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