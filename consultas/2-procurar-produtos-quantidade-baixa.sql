SELECT
	p.id_produto,
	p.nome,
	p.preco,
	p.quantidade_estoque,
	e.localizacao AS localizacao_estoque
FROM
	produto p 
JOIN
	estoque e ON p.id_estoque = e.id_estoque
WHERE p.quantidade_estoque < 20;