SELECT 
    vd.id as id_vendedor,
    vd.nome AS vendedor,
    SUM(ic.quantidade * ic.preco_unitario) AS total_vendido
FROM 
    vendedor vd
JOIN 
    compra cp ON cp.id_vendedor = vd.id
JOIN 
    item_compra ic ON ic.id_compra = cp.id
WHERE 
    cp.status = 'Concluída'
GROUP BY 
    vd.nome
ORDER BY 
    total_vendido DESC;
