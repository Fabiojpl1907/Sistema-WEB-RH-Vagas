package fj.classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Investimento {
	public String cpf_c;
	public String nome_c;
	public Float valor_investido_c;
	public Float taxa_c;
	public Integer periodo_c;
	public String ocorrencia_c;
	public Double valor_calculado_c;
	
	
	public void CalcularInvestimento() {
		valor_calculado_c = valor_investido_c  * Math.pow( 1+taxa_c, periodo_c );
	}

	public void GravarInvestimento() {
		
		// como serão utilizadas conexão a banco de dados 
		// o java obriga a tratar possiveis erros ( exceptions ) 
		// com throw ou try/catch
		

		try {
			
			// Carregando o JDBC Driver padrão
			String driverName = "com.mysql.cj.jdbc.Driver";
			Class.forName(driverName);
			
			// Configurando a nossa conexão com um banco de dados//
	        String serverName = "localhost";    	//caminho do servidor do BD
	        String mydatabase =  "exemplojspbd";   //nome do seu banco de dados
	        String url = "jdbc:mysql://" + serverName + "/" + mydatabase;

	        String username = "Dev";        //nome de um usuário de seu BD
	        String password = "MySQL2@22";  //sua senha de acesso

			// se conectar ao banco de dados 
			//  usando um objeto de conexão ao banco de dados
	        java.sql.Connection conn = DriverManager.getConnection(url, username, password); 
	        
			// comando SQL de inserção 
			// fornecendo o nome da tabela -> investimento
			// campos na mesma sequencia da tabela 
			String Sql = "INSERT INTO investimento(cpf, nome, valor_investido,taxa, periodo, ocorrencia, valor_calculado) VALUES(?,?,?,?,?,?,?)";
			
			// criar objeto que ira capturar os valores e 
			// executar a ação de gravar no banco de dados 
			PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
			
			// incluir dados no objeto
			comando.setString(1, cpf_c);
			comando.setString(2, nome_c);
			comando.setFloat(3, valor_investido_c);
			comando.setFloat(4, taxa_c);
			comando.setInt(5, periodo_c);
			comando.setString(6, ocorrencia_c);
			comando.setDouble(7, valor_calculado_c);
			
			// incluir no banco de dados
			comando.execute();
			comando.close();
			conn.close();
			
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			
		}	
		
	}
	
}

