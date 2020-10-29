create database rh_db;
use rh_db;

create table colaboradores(
	id_codigo_colaborador int not null auto_increment,
    nome varchar(40),
    sexo enum ("F", "M", "O"),
    nascimento date,
    salario decimal (10,2),
    cargo varchar (30),
    primary key (id_codigo_colaborador)
)engine = InnoDB;

select * from colaboradores;

insert into colaboradores (id_codigo_colaborador, nome, sexo, nascimento, salario, cargo)values
	(id_codigo_colaborador, "Debora", "F", "1998-09-29", 2700, "desenvolvedora jr"),
	(id_codigo_colaborador, "Rafaela", "F", "2000-12-15", 1800, "estágiaria TI"),
	(id_codigo_colaborador, "Odara", "O", "1985-03-27", 15000, "CTO"),
	(id_codigo_colaborador, "Alexandre", "M", "1981-01-23", 7900, "desenvolvedor senior");
    
select * from colaboradores where salario > 2000;
select * from colaboradores where salario < 2000;