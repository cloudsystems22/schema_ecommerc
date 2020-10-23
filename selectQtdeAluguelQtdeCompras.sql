-- Quantas pessoas alugaram carros no último ano
select count(c.id) from Cliente c join pedido p on c.id = p.Cliente_id
where p.tipo = 'Aluguel' and p.data > YEAR(DATE_SUB(CURDATE(), INTERVAL 1 YEAR));

-- Quantas pessoas compraram carros no último mês
select count(c.id) from Cliente c join pedido p on c.id = p.Cliente_id
where p.tipo = 'Compra' and p.data > DATE_SUB(NOW(), INTERVAL 1 MONTH);