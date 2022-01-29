create database empregos;

use empregos;

create table vagas(
idvaga int primary key auto_increment,
descricao varchar(45) not null,
req_obrigatorios varchar(45) not null,
req_desejaveis varchar(45) not null,
remuneracao float not null,
beneficios varchar(45) not null,
local_trabalho varchar(45) not null,
aberta tinyint default 1 -- 1 true aberta -- 0 false fechada --
) AUTO_INCREMENT = 1000; -- inicia codigo da vaga (id vaga) com valor 1000 --
