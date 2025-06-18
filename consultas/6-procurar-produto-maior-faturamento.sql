SELECT
   p.nome,
   SUM(ic.quantidade * ic.preco_unitario) AS faturamento
FROM
   produto p
JOIN
   item_compra ic ON ic.id_produto = p.id_produto
JOIN
   compra cp ON cp.id_compra = ic.id_compra
WHERE
   cp.status = 'finalizada'
GROUP BY
   p.nome
ORDER BY
   faturamento DESC
LIMIT 1;
