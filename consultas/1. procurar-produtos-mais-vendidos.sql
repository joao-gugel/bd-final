select 
    p.*
from 
    produto p
join 
    item_compra it on it.id_produto = p.id
join
    compra cp on cp.id  = it.id_compra
where
    cp.status = 'Concluída'
order by 
    it.quantidade desc
limit 10;