**MVC – Model, View & Controller**

*Estrutura de pastas*

Ao utilizar o Spring Boot, aplica-se os conceitos de programação em três camadas, o que é denominado de aplicação MVC (Model, View e Controller).

As três camadas dentro da aplicação MVC são *pastas ou pacotes* que conterão arquivos .java, classes ou qualquer outro arquivo, o qual irá agrupar responsabilidades distintas dentro do projeto.

Os pacotes dentro do Spring para as três camadas são compostos pelas convenções: **views, controller e models.**

A camada **view** :  Nessa pasta, estão localizadas as páginas que serão executadas no browser do cliente e os frameworks responsáveis pelas tecnologias de front-end, como bootstrap, angular etc. Por exemplo: páginas html ou jsp, como index.html ou index.jsp.

A camada **model** : contém todas as classes que serão gravadas dentro de um banco de dados ou comporta classes que serão preenchidas com dados do usuário para execução de uma tarefa. Ela também contém as chamadas dos frameworks de persistência, como Hibernate ou drivers para banco de dados MYSQL, Postgre , Oracle, etc .

A camada **controller** : contém todas as classes que farão parte das regras de negócios do projeto ou da aplicação, comportando a lógica do programa e a implementação dos requisitos.

**Estrutura de projeto básico no modelo MVC**

Criar pacote do assunto a ser tratado ( Funcionário ) .

Criar os pacotes MVC :  controller, models e repository

Criar **View** : Um dos caminhos para colocar a camada de apresentação em um projeto Spring é a pasta: src/main/resources/templates. Nesta pasta criar o index.html , o qual será apresentado ao subirmos o servidor e acessa localhost:8080 no browser.

<!doctype html>
<html lang=”pt-br” >
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap CSS --> 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
	<title>Hello, world!</title>
</head>
<body>
	<h1>Hello, world!</h1>
</body>
</html>



Criar **Controller** : Os controllers são as classes Java que irão controlar a aplicação. As classes controllers devem possuir métodos e dentro dos métodos podemos inserir as instruções como: declaração de variáveis, instanciação de objetos, inserir instruções de loops, condicionais, operações aritméticas e booleanas, casting e recursão, entre outras instruções que executam no lado servidor.
Um dos conceitos mais utilizados dentro das classes de controllers são as anotações ou annotations. As anotações são palavras reservadas após o símbolo @ que servem para informar o comportamento de uma classe ou dar uma instrução ao framework.

