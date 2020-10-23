-- Quantas pessoas alugaram carros no último ano
select count(c.id) from cliente c join pedido p on c.id = p.Cliente_id
where p.tipo = 'Aluguel' and p.data > YEAR(DATE_SUB(CURDATE(), INTERVAL 1 YEAR));

-- Quantas pessoas compraram carros no último mês
select count(c.id) from cliente c join pedido p on c.id = p.Cliente_id
where p.tipo = 'Compra' and p.data > DATE_SUB(NOW(), INTERVAL 1 MONTH);

-- Qual o modelo mais procurado
SELECT p.Carro_id, c.modelo as 'Modelo mais procurado', c.marca, COUNT(*) As 'Total' 
FROM icar.pedido p
INNER JOIN carro c ON p.Carro_id = c.id
group by Carro_id
order by COUNT(*) desc
limit 3;

-- Quantas pessoas alugaram e depois compraram o mesmo carro depois 
select p1.Cliente_id, p1.Carro_id, p1.tipo, COUNT(*) as 'Contador'
from pedido p1 
WHERE EXISTS
    (SELECT *
     FROM pedido
     WHERE tipo LIKE 'Aluguel' group by Cliente_id,Carro_id, tipo) and tipo = 'Compra' 
group by Cliente_id,Carro_id, tipo
