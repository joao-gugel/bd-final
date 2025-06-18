SELECT 
    p.id_produto,
    p.nome,
    p.preco,
    p.categoria,
    SUM(ic.quantidade) AS qnt_vendas
FROM 
    produto p
JOIN 
    item_compra ic ON ic.id_produto = p.id_produto
JOIN
    compra cp ON cp.id_compra  = ic.id_compra
WHERE
    cp.status = 'finalizada'
GROUP BY
	p.id
ORDER BY 
    qnt_vendas DESC
LIMIT 10;