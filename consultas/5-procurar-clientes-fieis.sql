SELECT
    cl.id_cliente,
	cl.nome,
	COUNT(cp.id_compra) AS compras_quantidade
FROM
    cliente cl
JOIN 
    compra cp ON cp.id_cliente  = cl.id_cliente
WHERE
    cp.status = 'finalizada'
GROUP BY 
    cl.id_cliente
ORDER BY 
    compras_quantidade DESC
LIMIT 10;
