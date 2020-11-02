select * from tb_produtos -- é a tabela que está a esquerda
	inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
    
select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
	inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
    
select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
	left join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
    
select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
	right join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
    
#where tb_marcas.nome = "Nike"
/*where tb_marcas.nome like "%za%"
	and tb_produtos.preco < 50.00
    and tb_produtos.nome like "%meia%"*/
/*where tb_produtos.nome like "%meia%"
	or tb_produtos.nome like "%tê%"*/