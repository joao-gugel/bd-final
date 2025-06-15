SELECT 
    cp.id AS id_compra,
    cp.status,
    cp.data,
    vd.nome AS vendedor,
    cl.nome AS cliente,
    STRING_AGG(p.nome, ', ') AS produtos
FROM 
    compra cp
JOIN 
    item_compra ic ON ic.id_compra = cp.id
JOIN 
    produto p ON ic.id_produto = p.id
JOIN 
    cliente cl ON cl.id = cp.id_cliente
JOIN 
    vendedor vd ON vd.id = cp.id_vendedor
WHERE 
    cp.id = 5
GROUP BY 
    cp.id, vd.nome, cl.nome;
