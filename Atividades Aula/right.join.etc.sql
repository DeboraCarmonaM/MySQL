#criar banco de dados
create database joiins;
use joiins;

#tabela endereços
create table endereco_clientes (
	cliente_id1 int not null,
    cliente_endereco text,
    primary key (cliente_id1));
 
 #tabela clientes
create table clientes (
	cliente_id0 int primary key auto_increment,
    nome varchar (100));
    
select * from clientes;
select * from endereco_clientes;

insert into clientes values
	(1, "João Marcio"),	
	(2, "Juliana"),	
	(3, "João Marcio"),
	(4, "Gabriela"),    
	(6, "Fabio"),    
	(7, "Juliana");   

insert into endereco_clientes values
	(1, 'Rua Faria lima, Centro, São Paulo'),
    (2, 'Rua Osvaldo Cruz,Campinas, São Paulo'),
    (3, 'Rua Rosana, Sinara, Nova Esperança'),
    (4, 'Av. Bias Fortes, Centro, Brasília'),
    (5, 'Beatles, Santa Cruz, Rio de Janeiro'),
    (6, 'Av. Esquerda, Vila Pinheiro, New York');

select * from clientes 
left join endereco_clientes #priorizando dados tabela clientes 
on clientes.cliente_id0 = endereco_clientes.cliente_id1; #relação de herança 
	#tabela   coluna         #tabela   			coluna      

select * from clientes 
right join endereco_clientes
on clientes.cliente_id0 = endereco_clientes.cliente_id1;

#copia tabela
create table clientes_copia select * from clientes;
create table enderecos_clientes_copia select * from clientes;

create table inner_copia select * from clientes
inner join endereco_clientes
on clientes.cliente_id0 = endereco_clientes.cliente_id1;
