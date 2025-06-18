SELECT 
    cp.id_compra,
    cp.status,
    cp.data,
    vd.nome AS vendedor,
    cl.nome AS cliente,
    STRING_AGG(p.nome, ', ') AS produtos
FROM 
    compra cp
JOIN 
    item_compra ic ON ic.id_compra = cp.id_compra
JOIN 
    produto p ON ic.id_produto = p.id_produto
JOIN 
    cliente cl ON cl.id_cliente = cp.id_cliente
JOIN 
    vendedor vd ON vd.id_vendedor = cp.id_vendedor
WHERE 
    cp.id_compra = 5
GROUP BY 
    cp.id_compra, vd.nome, cl.nome;
