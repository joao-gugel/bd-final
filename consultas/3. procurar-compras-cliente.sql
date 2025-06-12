select 
	cp.id,
	cp.status,
	cp.data,
	vd.nome as vendedor,
	cl.nome as cliente
from 
    compra cp
join 
    cliente cl on cl.id = cp.id_cliente
join 
    vendedor vd on vd.id = cp.id_vendedor
where 
    cp.id = 5; 