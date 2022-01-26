**SQL para criação do Banco de Dados e Tabela**

create database exemplojspbd;

use exemplojspbd;

create table investimento(cpf varchar(14) primary key,
nome varchar (45),
valor_investido float,
taxa float,
periodo int,
ocorrencia date,
valor_calculado double);

select * from investimento;

