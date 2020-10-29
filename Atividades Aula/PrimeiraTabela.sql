CREATE TABLE tb_venda (
    idVenda SMALLINT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(255) not null,
    preco DECIMAL(10,2) unsigned,
    horarioVenda DATETIME DEFAULT CURRENT_TIMESTAMP,
    data_Entrega DATE,
    hora_Entrega TIME
);

insert into tb_venda (produto, preco, data_Entrega, hora_Entrega) values
("Ecosport", 70.00, "2020-12-03", "13:40:00");

select * from tb_venda;

#data type - tipo de dado
#UPPER CASE MAIUSCULO, LOWER CASE MINÚSCULO--chora por tudo
#Primary key é uma chave primária, auto increment aumenta automaticamente 
#default padrão
#current_timestamp - horário atual
#boa prática: TB no nome de table, DB no nome banco de dados