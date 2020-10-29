create database Ford; #criar
drop database Ford; #apagar

show databases; #mostrar databases 
use aula1;

create table funcionarios (
	nome varchar(30),
    idade tinyint,
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
);

#POST
insert into funcionarios values 
	("Juliana", 22, "f", 60, 1.65, "Brasileira"),
	("Gabriel", 22, "f", 60, 1.65, "Brasileira"),
	("Juliana", 22, "f", 60, 1.65, "Brasileira");
    
insert into funcionarios (nome, sexo) values ("Marcio", "m");

#PUT = update
update funcionarios set nacionalidade = "Argentino" where nome = "Gabriel";

#GET
SET SQL_SAFE_UPDATES = 0;
show tables; #mostra todas as tabelas 
describe funcionarios; #mostra a estrutura da tabela
select * from funcionarios; #dados tabela
select sexo from funcionarios; 
select nome, nacionalidade from funcionarios; 





