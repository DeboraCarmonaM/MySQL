#Crie um banco de dados, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes
create database db__cidade_das_carnes;
use db__cidade_das_carnes;

# tabela tb_categoria/3 atributos relevantes do tb_categoria
create table tb_categoria(
	id_categoria int not null auto_increment,
    organico enum ("sim", "não"),
    tipo_carne varchar (30),
    primary key (id_categoria)
)engine InnoDB;

# tabela tb_produto
create table tb_produto(
	id_produto int not null auto_increment, 
    nome varchar (30),
	preco decimal,
    validade date,
    peso decimal,
    id_categoria int,
    primary key (id_produto),
		constraint fk_tb_categorias_id
        foreign key (id_categoria)
        references tb_categoria (id_categoria)
);

drop table tb_produto;
drop table tb_categoria;

#Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (organico,tipo_carne)
values
("sim","carne branca"),
("não","carne vermelha"),
("sim","carne vermelha"),
("não","frutos do mar/peixes");

select * from tb_categoria;

#Popule esta tabela Produto com até 8 dados.  
insert into tb_produto (id_categoria, nome, peso, validade, preco) 
values
(3,"Picanha Argentina", 200.50,'2020-11-07', 3.00),
(1,"Pato", 1.00,'2020-11-7',80.00),
(2,"Filé Mignon", 1.20,'2020-11-15',55.40),
(1,"Filé de coxa", 3.10 ,'2020-11-11',60.46),
(4,"camarão rosa grande", 1.7,'2021-01-22',150.00),
(3,"Bacon de pernil", 0.50,'2020-11-12',20.00),
(4,"Filé de salmão", 4.00,'2020-12-23',250.00),
(2,"Panceta", 2.60,'2020-11-30',62.00);

select * from tb_produto;

#Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50.00;

#Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco >=3.00 and preco <=60.00;

#Faça um select  utilizando LIKE buscando os Produtos com as letras CO.
select * from tb_produto where nome like "%co%";

#Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto
inner join tb_categoria
on tb_produto.id_produto = tb_categoria.id_categoria;

#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select nome from tb_produto where id_categoria = 3;
    
    