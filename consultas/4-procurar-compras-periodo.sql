SELECT
	cp.id AS id_compra,
	cp.status AS status_compra,
	cl.nome AS cliente,
	vd.nome AS vendedor
FROM
	compra cp
JOIN 
	cliente cl ON cl.id = cp.id_cliente
JOIN 
	vendedor vd ON vd.id = cp.id_vendedor
WHERE 
	cp.data
		BETWEEN '2023-3-26' AND '2025-10-26'
	AND
	cp.status = 'Concluída';