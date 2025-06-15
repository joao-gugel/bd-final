SELECT 
    p.id,
    p.nome,
    p.preco,
    p.categoria,
    SUM(ic.quantidade) AS qnt_vendas
FROM 
    produto p
JOIN 
    item_compra ic ON ic.id_produto = p.id
JOIN
    compra cp ON cp.id  = ic.id_compra
WHERE
    cp.status = 'Concluída'
GROUP BY
	p.id
ORDER BY 
    qnt_vendas DESC
LIMIT 10;