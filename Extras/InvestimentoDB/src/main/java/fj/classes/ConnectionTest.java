package fj.classes;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

public class ConnectionTest {
	
	public static void main(String[] args) {
		
//		 Connection connection = null;          //atributo do tipo Connection
		java.sql.Connection connection = null;
		
		try {
			
			// Carregando o JDBC Driver padr�o
			String driverName = "com.mysql.cj.jdbc.Driver";
			Class.forName(driverName);
			
			// Configurando a nossa conex�o com um banco de dados//
	        String serverName = "localhost";    	//caminho do servidor do BD
	        String mydatabase =  "exemplojspbd";   //nome do seu banco de dados
	        String url = "jdbc:mysql://" + serverName + "/" + mydatabase;

	        String username = "Dev";        //nome de um usu�rio de seu BD
	        String password = "MySQL2@22";  //sua senha de acesso
	        connection = DriverManager.getConnection(url, username, password);



	        //Retorna memssagem de sucesso / insucesso da cone��o 
	        if (connection != null) {
	        	System.out.println("  STATUS--->Conectado com sucesso!") ;
	            System.out.println("DATABASE : "+connection.getMetaData().getDatabaseProductName());
	        }
	        else System.out.println("  STATUS--->N�o foi possivel realizar conex�o") ;  	
			
		}
		// analisa 2 excetiosn mais comuns em Banco de dados 
		catch (ClassNotFoundException e) {  //Driver n�o encontrado
            System.out.println("O driver expecificado nao foi encontrado.");
        } 
		catch (SQLException e) {        	//N�o conseguindo se conectar ao banco
            System.out.println("Nao foi possivel conectar ao Banco de Dados.");
        }		
		
	}

}

