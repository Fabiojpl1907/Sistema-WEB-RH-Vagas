# Desenvolvimento Sistema WEB

```
nota : Este readme, bem como o repositótio serão atualizados durante o transcorrer do projeto. 
```

## Objetivo 

Este repositório registra um projeto, dentro do Curso de Full Stack do SENAI,  que tem como objetivo apresentar os passos necessários a construção de um pequeno sistema web, desde o levantamento de requisitos até sua disponibilização na web. 

## O Sistema 

A empresa na qual você trabalha precisa de uma solução em software para gerenciar as vagas em aberto no departamento de recursos humanos, o qual vai ser construído em fases .

#### Fase 1

Os requisitos funcionais são:

- Deve permitir o cadastramento das vagas de emprego em aberto, informando: identificador da vaga (idvaga), descrição do cargo, requisitos obrigatórios, requisitos desejáveis, remuneração mensal (R$), benefícios e local de trabalho.
- Deve permitir alterações nos dados das vagas, inclusive indicando se foram preenchidas ou não.
-  Deve permitir a exclusão de vagas.
- Deve exibir todas as vagas em formato de lista

#### Fase 2

Criar front End -Usando para  interface  páginas jsp com elementos em HTML, iniciando com a primeira página como index.jsp .



#### Fase 3

Criar Back-End - construir o banco de dados e seus respectivos relacionamentos, codificar a conexão com a aplicação e construir os métodos de manutenção da tabela (inclusão, alteração, exclusão) além do módulo de consulta .

#### Fase 4

Criar Front End com framework Angular e Json Server, e contem 

- duas páginas de rota
- arquivo vagas-db.json, com a lista de vagas
- Crie os componentes : Menu / Mural de vagas / Painel de Vagas / Rodape

#### Fase 5

Criar sistema de RH com uso do Spring Boot, com a seguinte configuração 

- Project :  Maven 

- Language :  Java

- SpringBoot : 2.6.3

- Packing : jar

- Java :  11( ou verão LTS mais  atual )

- Maven Project

- Dependencias

  - Spring Web : Construir aplicação WEB, incluindo RESTfull, usando SPRING MVC, Servidor Apache Tomcat como padrão
  - Spring Boot DevTools  : prove reinicio rápido das aplicações , LiveReload, e configurações para melhorar a experiencia de desenvolvimento 
  - Thymeleaf : mecanismo Java para ambientes web e local que permite HTML ser corretamente apresentado nos browsers e prototipos estáticos, 

- Controlando rotas – método GET / método POST

  

## Tecnologias & Conceitos

No transcorrer do projeto serão utilizadas : 

- POO / MVC 
- IDE Eclipse (https://www.eclipse.org/downloads/)
- Banco de dados MySQL
- WildFly (servidor internet )
- HTML
- CSS
- JSP
- JSON
- Java
- Angular
- Spring Boot



## Estrutura do Repositório

Cada passo é numerado e inserido do repositório e neste readme, conforme foram sendo realizados, de forma iterativa. 

1. Formulário de Requisitos + Diagrama de Classe + Modelo Lógico do BD

1. Front-End 
   Cria aplicação básica web para preencher Formulario  via JSP
   Utiliza o WildFly como servidor WEB

1. Back-End 

   Realiza interface com banco de dados MySQL 
   
   Através de JSP ( Java Server Page ) e Java, foi criado as rotinas de :
   
   ​	Incluir /  Alterar / Excluir / Listar vagas 
   
   ​	Em listar é possível escolher escolher vagas em aberto / fechadas / todas
   
   Chamada ao sistema se dá por : index.jsp
   
   Cada rotina possui 2 arquivos jsp
   
   ​	xxx_001 -> tela de solicitação ( cadastros / opções)
   
   ​	xxx_002 -> tela de apresentação / confirmação da ação 
   
   Arquivo empregos.sql apresenta os comando de criação do banco / tabela
   
   

 **Extras** : Esta pasta contem pequenos projetos que utilizam e apresentam os conceitos e tecnologias utilizado na aplicação web  

- exemplojsp : Calculo de investimento usando jsp e java
- investimendoDB : Interface com banco de dados MySQL