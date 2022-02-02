package fj.vagas;

//Classes necessárias para uso de Banco de dados 
// Tratar execeptions é mandatório ao manusear banco de dados

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

public class ConnectionTest {
	
	public static void main(String[] args) {
		
		 java.sql.Connection connection = null;          //atributo do tipo Connection
		
		try {
			
			// Carregando o JDBC Driver padrão
			String driverName = "com.mysql.cj.jdbc.Driver";
			Class.forName(driverName);
			
			// Configurando a nossa conexão com um banco de dados//
	        String serverName = "localhost";    	//caminho do servidor do BD
	        String mydatabase =  "empregos";   //nome do seu banco de dados
	        String url = "jdbc:mysql://" + serverName + "/" + mydatabase;

	        String username = "Dev";        //nome de um usuário de seu BD
	        String password = "MySQL2@22";  //sua senha de acesso
	        connection = DriverManager.getConnection(url, username, password);

	        //Retorna mensagem de sucesso / insucesso da coneção 
	        if (connection != null) System.out.println("  STATUS--->Conectado com sucesso!") ;  
	        else System.out.println("  STATUS--->Não foi possivel realizar conexão") ;  	
			
		}
		// analisa 2 excetiosn mais comuns em Banco de dados 
		catch (ClassNotFoundException e) {  //Driver não encontrado
          System.out.println("O driver expecificado nao foi encontrado.");
      } 
		catch (SQLException e) {        	//Não conseguindo se conectar ao banco
          System.out.println("Nao foi possivel conectar ao Banco de Dados.");
      }		
		
	}

}
