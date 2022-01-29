package fj.vagas;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConectaDB {
	
    String username = "Dev";        //nome de um usu�rio de seu BD
    String password = "MySQL2@22";  //sua senha de acesso
    
    public Connection Conectar() throws Exception {
   	 
    	// Carregando o JDBC Driver padr�o
    	String driverName = "com.mysql.cj.jdbc.Driver";
    	Class.forName(driverName);
    	
    	// Configurando a nossa conex�o com um banco de dados//
        String serverName = "localhost";    	//caminho do servidor do BD
        String mydatabase =  "empregos";   //nome do seu banco de dados
        String url = "jdbc:mysql://" + serverName + "/" + mydatabase;
        java.sql.Connection conn  = DriverManager.getConnection(url, username, password); 	
    	
    	return conn;
    }
	
}
		
		 
				



