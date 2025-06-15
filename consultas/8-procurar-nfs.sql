SELECT 
    nf.id,
    nf.numero,
    nf.data_emissao,
    nf.chave_acesso,
    cp.id AS id_compra,
    cl.nome AS cliente,
    vd.nome AS vendedor
FROM 
    nota_fiscal nf
JOIN 
    compra cp ON cp.id = nf.id_compra
JOIN 
    cliente cl ON cl.id = cp.id_cliente
JOIN vendedor vd ON vd.id = cp.id_vendedor
WHERE 
    nf.data_emissao BETWEEN '2023-01-01' AND '2025-08-26';
