SELECT 
    vd.id_vendedor,
    vd.nome AS vendedor,
    SUM(ic.quantidade * ic.preco_unitario) AS total_vendido
FROM 
    vendedor vd
JOIN 
    compra cp ON cp.id_vendedor = vd.id_vendedor
JOIN 
    item_compra ic ON ic.id_compra = cp.id_compra
WHERE 
    cp.status = 'finalizada'
GROUP BY 
    vd.id_vendedor, vd.nome
ORDER BY 
    total_vendido DESC;
