select 
	c.nome,
	COUNT(cp.id) as compras_quantidade
from 
    cliente c 
join 
    compra cp on cp.id_cliente  = c.id
where 
    cp.status = 'Concluída'
group by 
    c.nome 
order by 
    compras_quantidade desc
limit 10;
