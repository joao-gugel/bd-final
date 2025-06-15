SELECT
    cl.id as id_cliente,
	cl.nome,
	COUNT(cp.id) AS compras_quantidade
FROM
    cliente cl
JOIN 
    compra cp ON cp.id_cliente  = cl.id
WHERE
    cp.status = 'Concluída'
GROUP BY 
    cl.id
ORDER BY 
    compras_quantidade DESC
LIMIT 10;
