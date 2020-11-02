create database db_estoque;   
use db_estoque;

create table tb_marcas(
	id bigint(5) auto_increment, # 99999
    nome varchar(20) not null,
    ativo boolean, 
    primary key (id)
);

select * from tb_marcas;

insert into tb_marcas(nome, ativo) values ("Nike", true);
insert into tb_marcas(nome, ativo) values ("Fatal Surf", false);

insert into tb_marcas(nome, ativo) 
	values
		("H&M", true),
		("Zara", true),
		("Louis Vuitton", true),
		("Adidas", true),
		("Uniqlo", true),
		("Hermès", true),
		("Rolex", true),
		("Gucci", true),
		("Cartier", true);

create table tb_produtos (
	id bigint auto_increment,
    nome varchar (30) not null,
    preco decimal(10,2),
    marca_id bigint not null,
    
    primary key (id),
    foreign key (marca_id) references tb_marcas (id)
 );
 
 insert into tb_produtos(nome, preco, marca_id)
	values
		("Camisa", 22.99 ,1),
        ("Tênis", 200.00, 3),
		("Sapato","60.53",11),
		("Camisa","58.18",9),
		("Meias","83.50",4),
		("Meias","92.81",3),
		("Blusa","76.95",9),
		("Tênis","96.56",4),
		("Sapato","61.16",8),
		("Sapato","73.08",4),
		("Meias","53.45",6),
		("Camisa","56.92",3),
		("Blusa","81.02",9),
		("Meias","90.09",11),
		("Tênis","55.73",9),
		("Sapato","09.46",10),
		("Calça","60.61",10),
		("Calça","71.91",7),
		("Sapato","54.90",7),
		("Sapato","13.16",8),
		("Sapato","80.22",3),
		("Calça","84.27",7),
		("Blusa","87.11",6),
		("Camisa","35.96",4),
		("Calça","23.16",11),
		("Tênis","77.88",3),
		("Calça","83.63",4),
		("Calça","68.98",4),
		("Sapato","18.33",8),
		("Blusa","43.75",4),
		("Sapato","96.40",5),
		("Calça","59.48",5),
		("Meias","19.44",6),
		("Calça","32.70",5),
		("Blusa","53.47",2),
		("Calça","68.23",9),
		("Sapato","45.82",8),
		("Meias","17.42",3),
		("Sapato","76.39",7),
		("Sapato","01.88",8),
		("Meias","69.80",10),
		("Sapato","80.52",2),
		("Sapato","86.33",6),
		("Calça","61.78",10),
		("Calça","28.29",8),
		("Blusa","57.99",4),
		("Camisa","55.48",9),
		("Sapato","84.55",2),
		("Camisa","68.45",6),
		("Sapato","64.03",6),
		("Blusa","37.26",5),
		("Blusa","54.97",9),
		("Tênis","60.05",11),
		("Sapato","02.20",4),
		("Sapato","62.34",8),
		("Camisa","27.78",2),
		("Sapato","09.43",4),
		("Meias","59.28",7),
		("Camisa","32.32",4),
		("Calça","33.27",3),
		("Meias","58.83",10),
		("Tênis","93.27",4),
		("Blusa","46.21",2),
		("Sapato","10.77",4),
		("Blusa","74.52",5),
		("Sapato","83.68",6),
		("Sapato","30.63",2),
		("Blusa","91.49",2),
		("Camisa","01.56",10),
		("Sapato","45.30",3),
		("Meias","97.40",6),
		("Meias","25.18",2),
		("Calça","70.40",3),
		("Camisa","20.94",10),
		("Blusa","89.31",3),
		("Meias","46.78",4),
		("Tênis","88.83",8),
		("Tênis","61.93",2),
		("Sapato","29.27",11),
		("Tênis","92.18",6),
		("Meias","10.19",2),
		("Tênis","00.46",7),
		("Calça","69.06",2),
		("Meias","93.42",10),
		("Tênis","50.73",12),
		("Calça","94.94",9),
		("Tênis","70.78",7),
		("Meias","87.82",4),
		("Blusa","01.51",11),
		("Meias","78.71",6),
		("Meias","77.15",10),
		("Blusa","64.60",6),
		("Tênis","53.82",12),
		("Calça","66.17",5),
		("Sapato","51.72",8),
		("Sapato","90.24",12),
		("Calça","31.67",4),
		("Calça","07.12",12),
		("Sapato","56.89",1),
		("Blusa","77.37",5),
		("Blusa","81.72",7),
		("Calça","66.29",6);

select * from tb_produtos;
 
#delete from tb_marcas where id = 1 -- apagar linha tabela
#select * from tb_marcas where nome like "%ni%"; -- pesquisar 
#drop database db_estoque; apagar db
#update tb_marcas set ativo = true -- mudança dado tabela
	#where id = 2;
